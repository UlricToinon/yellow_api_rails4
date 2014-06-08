module YellowApiRails4
  class Client

    # Requires a FindBusiness call first. 
    # Information returned on this first call provides the necessary information for the GetBusinessDetails call.
    #
    # For more information: http://www.yellowapi.com/docs/places/
    module GetTypeAhead

      def get_type_ahead(text, field, options = {})
        options[:text] = text
        options[:field] = field.to_s.uppercase

        get('/GetTypeAhead/', options)
      end

    end
  end
end