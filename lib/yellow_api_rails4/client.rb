# require 'yellow_api_rails4/connector/connexion'
# require 'yellow_api_rails4/methods/places/find_business'
module YellowApiRails4
  class Client
    # Include for connection to the API
    include YellowApiRails4::Client::Connection
    include YellowApiRails4::Client::Request
    include YellowApiRails4::Client::Config

    # Include for PlaceAPI's methods
    include YellowApiRails4::Client::FindBusiness

    # Include for DealsAPI's methods
    # Comming soon


    attr_accessor *Config::VALID_OPTIONS_KEYS
    
    def initialize(place_or_deals, options={})
      # Reset YellowApiRails4 to the default use
      YellowApiRails4.reset(place_or_deals)
      options = YellowApiRails4.options.merge(options)

      Config::VALID_OPTIONS_KEYS.each do |k|
        instance_variable_set("@#{k}".to_sym, options[k])
      end
    end
    
  end
end