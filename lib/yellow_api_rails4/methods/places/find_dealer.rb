module YellowApiRails4
  class Client

    # Requires a FindBusiness call first. 
    # Information returned on this first call provides the necessary information for the GetBusinessDetails call.
    #
    # For more information: http://www.yellowapi.com/docs/places/
    module FindDealer

      def find_dealer(parent_id, pg = 1, pgLen = 40, options = {})
        options[:pid] = parent_id
        options[:pg] = pg
        options[:pgLen] = pgLen

        get('/FindDealer/', options)
      end

    end
  end
end