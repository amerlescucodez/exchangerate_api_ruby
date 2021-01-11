module ExchangeRate
  class << self
    def configure
      yield config
    end #/def

    def config
      @_config ||= Config.new
    end #/def
  end #/class

  class Config
    attr_accessor :api_key
    attr_accessor :use_ssl

    def initialize
      @api_key = nil
      @use_ssl = true
    end #/def
  end #/class
end #/module