require 'minitest/autorun'
require './lib/exchangerate_api_ruby'
require 'bigdecimal'

describe ExchangeRate do
  before do
    ExchangeRate.configure do |config|
      config.api_key = "<your_api_key>"
    end #/block - configure
  end #/block - before

  describe "Interact with ExchangeRate-API.com" do
    it "should return the current exchange rates for USD" do
      request = ExchangeRate::API.fetch("USD")
      assert_equal request[:result]["conversion_rates"]["USD"], 1
    end #/it 
  end #/block - describe
end #/block - describe