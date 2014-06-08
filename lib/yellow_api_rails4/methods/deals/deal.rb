module YellowApiRails4
  class Client

    module Deal

    	# This call must also be accompanied by a Places API GetBusinessDetails to display the merchant’s information.
    	# 
    	# For more information : http://www.yellowapi.com/docs/deals/
      def get_deal(deal_id, options = {})

        get("/deal/#{deal_id}", options)
      end

    end
  end
end