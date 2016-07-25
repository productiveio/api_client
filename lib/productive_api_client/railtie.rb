require 'rails'

module ProductiveApiClient
  class Railtie < Rails::Railtie
    config.after_initialize do
      ProductiveApiClient::Base.setup
    end
  end
end
