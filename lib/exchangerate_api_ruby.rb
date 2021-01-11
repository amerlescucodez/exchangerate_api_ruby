# frozen_string_literal: true
require 'logging'

module ExchangeRate
end

begin
  require 'rails'
rescue LoadError
  # do nothing
end #/begin-rescue

require_relative 'exchangerate_api_ruby/config'
require_relative 'exchangerate_api_ruby/logger'
require_relative 'exchangerate_api_ruby/api'

if defined? ::Rails::Railtie
  require_relative 'exchangerate_api_ruby/railtie'
end #/if