# require File.expand_path('../lib/exchangerate_api_ruby/version', __FILE__)
$:.push File.expand_path("../lib", __FILE__)
require "exchangerate_api_ruby/version"


Gem::Specification.new do |s|
  s.authors                = ["Andrei Merlescu"]
  s.email                  = ["andrei+github@merlescu.net"]
  s.description            = s.summary = "Simple interface to access ExchangeRate-API.com"
  s.homepage               = "https://github.com/amerlescucodez/exchangerate_api_ruby"
  s.license                = "MIT"
  s.files                  = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.name                   = "exchangerate_api_ruby"
  s.require_paths          = ["lib"]
  s.version                = ExchangeRate::VERSION
  s.add_runtime_dependency 'logging', '~> 2.2', '>= 2.2.2'
end
