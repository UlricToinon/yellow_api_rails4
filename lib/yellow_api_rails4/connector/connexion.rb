# Extern dependance
# require 'net/http' include by faraday
require 'uuid'
require 'faraday'

module YellowApiRails4

  class Client

    module Connection

      private

      def connection(options={})
        is_sandbox = options.fetch(:is_sandbox, is_sandbox)

        url = (is_sandbox)? options.fetch(:sandbox_url, sandbox_url): options.fetch(:prod_url, prod_url)

        @connection ||= Faraday.new(:url => url) do |faraday|
          faraday.request :url_encoded              # form-encode POST params
          faraday.response :logger                  # log requests to STDOUT
          faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
        end
      end

    end

    module Request
      
      def uid
        @uid ||= UUID.new.generate(:compact)
      end

      def get(path, options)
        options[:apikey] = apikey
        options[:fmt] = fmt
        options[:UID] = uid
        
        request(:get, path, options)
      end

      # Request method can be use with get 
      def request(method, path, options)
        response = connection.send(method) do |request|
          request.url(path, options)
        end
        response.body
      end
      
    end
  end

end