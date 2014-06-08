require "i18n"

module YellowApiRails4
  class Client

    # Requires a FindBusiness call first. 
    # Information returned on this first call provides the necessary information for the GetBusinessDetails call.
    #
    # For more information: http://www.yellowapi.com/docs/places/
    module GetBusinessDetails

      def get_business_details(bus_name, listing_id, province, city = "", options = {})
        options["bus-name"] = normalize(bus_name)
        options[:listingId] = listing_id
        options[:prov] = normalize(province)

        if !city.blank?
          options[:city] = normalize(city)
        end
        get('/GetBusinessDetails/', options)
      end

      def normalize(str)
        str = I18n.transliterate(str)
        str = str.gsub(/[^0-9a-zA-Z]/i, '-').gsub(/-+/, '-')
      end

    end
  end
end