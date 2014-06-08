require 'yellow_api_rails4/version'

module YellowApiRails4

  # Defines constants for default configuration
  module Config

    #PlaceAPI
    DEFAULT_PLACE_PROD_URL = "http://api.yellowapi.com"
    DEFAULT_PLACE_SANDBOX_URL = "http://api.sandbox.yellowapi.com"
    DEFAULT_APIKEY = nil
    DEFAULT_IS_SANDBOX = false
    DEFAULT_RESPONSE_FORM = "json"
    DEFAULT_PAGE_LENGHT = 10
    DEFAULT_LANGUAGE = "en"


    #DealsAPI
    DEFAULT_DEALS_PROD_URL = "http://deals.yellowapi.com"

    # Keys which can be configured 
    VALID_OPTIONS_KEYS = [
      :apikey,
      :prod_url,
      :sandbox_url,
      :is_sandbox,
      :fmt,
      :pgLen,
      :lang
    ]

    attr_accessor *VALID_OPTIONS_KEYS

    # Allows configuration options to be set in a block
    def configure
      yield self
      self
    end

    # Create a hash of options and their values
    def options
      options = {}
      VALID_OPTIONS_KEYS.each do |k|
        options[k] = send(k)
      end
      options
    end

    # Reset all configurations back to defaults
    def reset(api_to_use)
      if api_to_use.to_s == "deals"
        self.prod_url = DEFAULT_DEALS_PROD_URL
        self.is_sandbox = DEFAULT_IS_SANDBOX #No sandbox for Deals API
      else
        self.prod_url = DEFAULT_PLACE_PROD_URL
        self.sandbox_url = DEFAULT_PLACE_SANDBOX_URL
        self.is_sandbox = DEFAULT_IS_SANDBOX
      end
      self.apikey = DEFAULT_APIKEY
      self.fmt = DEFAULT_RESPONSE_FORM
      self.pgLen = DEFAULT_PAGE_LENGHT
      self.lang = DEFAULT_LANGUAGE
    end
  end
end