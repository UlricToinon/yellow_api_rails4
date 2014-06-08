module YellowApiRails4
  class Client

    module SearchByMerchant

      def search_by_merchant(linstingId, options = {})
        options[:linstingId] = linstingId

        get("/search/national", options)
      end

    end
  end
end