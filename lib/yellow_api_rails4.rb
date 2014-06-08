require "yellow_api_rails4/version"

require "yellow_api_rails4/client"
require "yellow_api_rails4/connector/connexion"

module YellowApiRails4
  extend Config

  class << self
    
    # Alias for YellowApiRails4::Client.new
    # @return [YellowApiRails4::Client]
    def new(place_or_deals,options={})
      YellowApiRails4::Client.new(place_or_deals, options)
    end
  end
end
