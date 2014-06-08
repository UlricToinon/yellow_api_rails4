module YellowApiRails4
  class Client

    module SearchByNational

      def search_by_national(keyword, type = "", options = {})
        options[:radius] = (radius > 0)? radius : 20
        options[:keyword] = normalize_keywords(keyword)
        if type.to_s == "deal" || type.to_s == "coupon" || type.to_s == "deal coupon"
          options[:type] = type
        end

        get("/search/national", options)
      end

      def normalize_keywords(keyword)
        CGI::escape(keyword)
      end

    end
  end
end