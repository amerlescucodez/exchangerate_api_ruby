# ExhangeRate API Gem

Easily access the ExchangeRate API service with a gem that actually works.

## Installation

Add this to your `Gemfile`:

```ruby
gem 'exchangerate_api_ruby', '~> 1.0'
```

Or install it locally to your system: 

```bash
gem install exchangerate_api_ruby
```

## Configuration

If you're using Rails, then add a new file `config/initializers/exchangerate_api_ruby.rb` with: 

```ruby
require 'exchangerate_api_ruby'
ExchangeRate.configure do |config|
  config.api_key = "<api_key>"
end
```

> Replace `<api_key>` with your access token, which can be found **[On ExchangeRate API](https://www.exchangerate-api.com/)**.

## Usage

Make a request: 

```ruby
class BullionController < ActionController::Base

  def index
    @exchanges = ExchangeRate::API.fetch("USD")
  end #/def

end #/class
```

## Response from API

Request `ExchangeRate::API.fetch("USD")` and you will return with the following type of result:

```json
{
  "result": "success", 
  "documentation": "https://www.exchangerate-api.com/docs", 
  "terms_of_use": "https://www.exchangerate-api.com/terms", 
  "time_last_update_unix": 1610323201, 
  "time_last_update_utc": "Mon, 11 Jan 2021 00:00:01 +0000", 
  "time_next_update_unix": 1610409616, 
  "time_next_update_utc": "Tue, 12 Jan 2021 00:00:16 +0000", 
  "base_code": "USD", 
  "conversion_rates": {
    "USD": 1, 
    "AED": 3.6725, 
    "AFN": 77.1137, 
    "ALL": 100.8482, 
    "AMD": 522.7525, 
    "ANG": 1.79, 
    "AOA": 652.1647, 
    "ARS": 84.8427, 
    "AUD": 1.2896, 
    "AWG": 1.79, 
    "AZN": 1.6972, 
    "BAM": 1.5993, 
    "BBD": 2.0, 
    "BDT": 84.7385, 
    "BGN": 1.5991, 
    "BHD": 0.376, 
    "BIF": 1933.0206, 
    "BMD": 1.0, 
    "BND": 1.3242, 
    "BOB": 6.8721, 
    "BRL": 5.3782, 
    "BSD": 1.0, 
    "BTN": 73.3456, 
    "BWP": 10.8675, 
    "BYN": 2.5602, 
    "BZD": 2.0, 
    "CAD": 1.2691, 
    "CDF": 1972.1532, 
    "CHF": 0.886, 
    "CLP": 712.1382, 
    "CNY": 6.4719, 
    "COP": 3490.8059, 
    "CRC": 610.9705, 
    "CUC": 1.0, 
    "CUP": 25.0, 
    "CVE": 90.1648, 
    "CZK": 21.4684, 
    "DJF": 177.721, 
    "DKK": 6.1004, 
    "DOP": 58.1603, 
    "DZD": 132.0685, 
    "EGP": 15.6751, 
    "ERN": 15.0, 
    "ETB": 39.4011, 
    "EUR": 0.8178, 
    "FJD": 2.011, 
    "FKP": 0.7376, 
    "FOK": 6.1004, 
    "GBP": 0.7376, 
    "GEL": 3.3022, 
    "GGP": 0.7376, 
    "GHS": 5.8496, 
    "GIP": 0.7376, 
    "GMD": 52.0183, 
    "GNF": 10259.567, 
    "GTQ": 7.7873, 
    "GYD": 212.9611, 
    "HKD": 7.7553, 
    "HNL": 24.1025, 
    "HRK": 6.161, 
    "HTG": 72.0307, 
    "HUF": 295.5243, 
    "IDR": 14116.4758, 
    "ILS": 3.2107, 
    "IMP": 0.7376, 
    "INR": 73.3463, 
    "IQD": 1460.451, 
    "IRR": 42126.1812, 
    "ISK": 126.8764, 
    "JMD": 142.2029, 
    "JOD": 0.709, 
    "JPY": 103.9528, 
    "KES": 109.3873, 
    "KGS": 83.2448, 
    "KHR": 4052.1922, 
    "KID": 1.2894, 
    "KMF": 402.287, 
    "KRW": 1093.414, 
    "KWD": 0.2996, 
    "KYD": 0.8333, 
    "KZT": 419.0247, 
    "LAK": 9293.5588, 
    "LBP": 1507.5, 
    "LKR": 186.9689, 
    "LRD": 166.6719, 
    "LSL": 15.2899, 
    "LYD": 4.4398, 
    "MAD": 8.8071, 
    "MDL": 17.1775, 
    "MGA": 3785.7674, 
    "MKD": 50.2014, 
    "MMK": 1326.5885, 
    "MNT": 2849.0028, 
    "MOP": 7.9879, 
    "MRU": 36.8161, 
    "MUR": 39.4817, 
    "MVR": 15.3499, 
    "MWK": 770.9804, 
    "MXN": 20.0388, 
    "MYR": 4.028, 
    "MZN": 74.3672, 
    "NAD": 15.2899, 
    "NGN": 384.9229, 
    "NIO": 34.8315, 
    "NOK": 8.4271, 
    "NPR": 117.353, 
    "NZD": 1.3827, 
    "OMR": 0.3845, 
    "PAB": 1.0, 
    "PEN": 3.6168, 
    "PGK": 3.5129, 
    "PHP": 48.1373, 
    "PKR": 160.069, 
    "PLN": 3.6954, 
    "PYG": 6928.4254, 
    "QAR": 3.64, 
    "RON": 3.9679, 
    "RSD": 95.9664, 
    "RUB": 74.2139, 
    "RWF": 988.0752, 
    "SAR": 3.75, 
    "SBD": 8.0021, 
    "SCR": 21.1564, 
    "SDG": 55.1146, 
    "SEK": 8.2305, 
    "SGD": 1.3239, 
    "SHP": 0.7376, 
    "SLL": 10175.0102, 
    "SOS": 578.7037, 
    "SRD": 14.1579, 
    "SSP": 175.3938, 
    "STN": 20.0339, 
    "SYP": 519.9499, 
    "SZL": 15.2899, 
    "THB": 30.2021, 
    "TJS": 11.3048, 
    "TMT": 3.4996, 
    "TND": 2.671, 
    "TOP": 2.2382, 
    "TRY": 7.3572, 
    "TTD": 6.7825, 
    "TVD": 1.2894, 
    "TWD": 27.9259, 
    "TZS": 2311.1391, 
    "UAH": 28.2427, 
    "UGX": 3682.2818, 
    "UYU": 42.3445, 
    "UZS": 10456.5505, 
    "VES": 1429072.0331, 
    "VND": 23097.9631, 
    "VUV": 108.6442, 
    "WST": 2.4741, 
    "XAF": 536.3826, 
    "XCD": 2.7, 
    "XDR": 0.6931, 
    "XOF": 536.3826, 
    "XPF": 97.579, 
    "YER": 250.1264, 
    "ZAR": 15.2899, 
    "ZMW": 21.1561
  }
}
```


## Testing

```bash
ruby spec/exchangerate_api_ruby_spec.rb
```

Expected output should be: 

```
Run options: --seed 46441

# Running:

.

Finished in 0.204663s, 4.8861 runs/s, 4.8861 assertions/s.
1 runs, 1 assertions, 0 failures, 0 errors, 0 skips
```

## Errors

If you are missing the `api_key`, then if you attempt to run the tests, you might get the following kind of output: 

```
Run options: --seed 59022

# Running:

E

Error:
ExchangeRate::Interact with ExchangeRate-API.com#test_0001_should return the current exchange rates for USD:
URI::InvalidURIError: bad URI(is not URI?): "https://v6.exchangerate-api.com/v6/<your_api_key>/latest/USD"
    /Users/username/.rbenv/versions/2.6.4/lib/ruby/2.6.0/uri/rfc3986_parser.rb:67:in `split'
    /Users/username/.rbenv/versions/2.6.4/lib/ruby/2.6.0/uri/rfc3986_parser.rb:73:in `parse'
    /Users/username/.rbenv/versions/2.6.4/lib/ruby/2.6.0/uri/common.rb:234:in `parse'
    /Users/username/workspace/exchangerate-api/lib/exchangerate_api/api.rb:12:in `fetch'
    spec/exchangerate_api_ruby_spec.rb:14:in `block (3 levels) in <main>'
    /Users/username/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/minitest-5.14.2/lib/minitest/test.rb:98:in `block (3 levels) in run'
    /Users/username/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/minitest-5.14.2/lib/minitest/test.rb:195:in `capture_exceptions'
    /Users/username/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/minitest-5.14.2/lib/minitest/test.rb:95:in `block (2 levels) in run'
    /Users/username/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/minitest-5.14.2/lib/minitest.rb:272:in `time_it'
    /Users/username/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/minitest-5.14.2/lib/minitest/test.rb:94:in `block in run'
    /Users/username/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/minitest-5.14.2/lib/minitest.rb:367:in `on_signal'
    /Users/username/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/minitest-5.14.2/lib/minitest/test.rb:211:in `with_info_handler'
    /Users/username/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/minitest-5.14.2/lib/minitest/test.rb:93:in `run'
    /Users/username/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/minitest-5.14.2/lib/minitest.rb:1029:in `run_one_method'
    /Users/username/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/minitest-5.14.2/lib/minitest.rb:341:in `run_one_method'
    /Users/username/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/minitest-5.14.2/lib/minitest.rb:328:in `block (2 levels) in run'
    /Users/username/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/minitest-5.14.2/lib/minitest.rb:327:in `each'
    /Users/username/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/minitest-5.14.2/lib/minitest.rb:327:in `block in run'
    /Users/username/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/minitest-5.14.2/lib/minitest.rb:367:in `on_signal'
    /Users/username/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/minitest-5.14.2/lib/minitest.rb:354:in `with_info_handler'
    /Users/username/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/minitest-5.14.2/lib/minitest.rb:326:in `run'
    /Users/username/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/minitest-5.14.2/lib/minitest.rb:164:in `block in __run'
    /Users/username/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/minitest-5.14.2/lib/minitest.rb:164:in `map'
    /Users/username/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/minitest-5.14.2/lib/minitest.rb:164:in `__run'
    /Users/username/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/minitest-5.14.2/lib/minitest.rb:141:in `run'
    /Users/username/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/minitest-5.14.2/lib/minitest.rb:68:in `block in autorun'


rails test spec/exchangerate_api_ruby_spec.rb:13



Finished in 0.001091s, 916.5902 runs/s, 0.0000 assertions/s.
1 runs, 0 assertions, 0 failures, 1 errors, 0 skips
```

## Credit

This gem was created by [Andrei Merlescu](https://github.com/sponsors/patriotphoenix). 

## License

[MIT License](LICENSE)
