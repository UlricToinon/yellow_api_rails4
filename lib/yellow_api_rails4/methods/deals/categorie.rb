module YellowApiRails4
  class Client

    module Categorie

    	# For more information : http://www.yellowapi.com/docs/deals/#categories
      def get_categories(options = {})

        get("/categories", options)
      end

    end
  end
end