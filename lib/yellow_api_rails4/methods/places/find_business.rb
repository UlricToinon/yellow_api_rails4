module YellowApiRails4
  class Client
    module FindBusiness

      def find_business(what, where, options = {})
        options[:what] = what
        options[:where] = where
        
        get('/FindBusiness/', options)
      end

      # params "where" can be set with GPS coordonate
      # example: "cZ-73.61995,45.49981"
      # params "dist" - default = 20 kilometers
      def find_business_with_distance(what, where_lat, where_lng, dist = 20, options = {})
        options[:what] = what
        options[:where] = construct_where(where_lat, where_lng)
        options[:dist] = dist
        
        get('/FindBusiness/', options)
      end

      def construct_where(lat, lng)
        "CZ-#{lat},#{lng}"
      end

    end
  end
end