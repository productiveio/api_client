require 'json_api_client'

require 'productive_api_client/version'
require 'productive_api_client/configuration'
require 'productive_api_client/resources/base'
require 'productive_api_client/resources/client'
require 'productive_api_client/resources/person'
require 'productive_api_client/resources/project'

require 'productive_api_client/railtie' if defined?(Rails::Railtie)

module ProductiveApiClient
  class << self
    def configure
      yield configuration
    end

    def configuration
      @configuration ||= ProductiveApiClient::Configuration.new
    end
  end
end
