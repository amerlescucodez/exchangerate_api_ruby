# frozen_string_literal: true

module ExchangeRate
  class Railtie < ::Rails::Railtie #:nodoc:
    # Doesn't actually do anything. Just keeping this hook point, mainly for compatibility
    initializer 'exchangerate_api_ruby' do
    end
  end
end