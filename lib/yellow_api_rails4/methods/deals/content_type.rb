module YellowApiRails4
  class Client

    module ContentType

    	# For more information : http://www.yellowapi.com/docs/deals/#categories
      def get_content_type(options = {})

        get("/content-types", options)
      end

    end
  end
end