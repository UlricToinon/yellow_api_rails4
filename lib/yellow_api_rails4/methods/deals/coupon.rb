module YellowApiRails4
  class Client

    module Coupon

    	# This call must also be accompanied by a Places API GetBusinessDetails to display the merchant’s information.
    	# 
    	# For more information : http://www.yellowapi.com/docs/deals/
      def get_coupon(coupon_id, options = {})

        get("/coupon/#{coupon_id}", options)
      end

    end
  end
end