require 'net/http'
require 'json'
require_relative "consts"

module ExchangeRate
  class API
    class << self
      def fetch currency
        raise ArgumentError, "missing currency argument" if currency.nil?
        raise ArgumentError, "invalid currency argument" unless EXCHANGERATE_API_CURRENCY_CODES.keys.include?(currency)

        uri = URI.parse("https://v6.exchangerate-api.com/v6/#{ExchangeRate.config.api_key}/latest/#{currency.upcase}")

        response = nil
        result = nil
        Net::HTTP.start(uri.host, uri.port, use_ssl: ExchangeRate.config.use_ssl) do |http|
          req = Net::HTTP::Get.new(uri)
          req['Content-Type'] = 'application/json'
          response = http.request(req)
          result = response&.body
        end #/block

        {
          success: response.instance_of?(Net::HTTPOK),
          response: response,
          result: JSON.parse(result)
        }
      rescue
        {
          success: false,
          response: nil
        }
      end #/def
    end #/class
  end #/class
end #/class