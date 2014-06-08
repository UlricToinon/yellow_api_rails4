module YellowApiRails4
  class Client

    module GetTypeAhead

      def search_by_geolocation(longitude, latitude, keyword, radius = 20, type, options = {})
        options[:radius] = (radius > 0)? radius : 20
        options[:keyword] = normalize_keywords(keyword)
        if type.to_s == "deal" || type.to_s == "coupon" || type.to_s == "deal coupon"
          options[:type] = type
        end

        get("/search/geo/#{longitude}/#{latitude}", options)
      end

      def normalize_keywords(keyword)
        CGI::escape(keyword)
      end

    end
  end
end