module Productive
  class Base < JsonApiClient::Resource
    def self.setup(config)
      site_setup config
      connection_options_setup config
      paginator_setup config
    end

    def self.site_setup(config)
      self.site = File.join config.base_url, '/'
    end

    def self.connection_options_setup(config)
      self.connection_options = { headers: { 'X-Auth-Token' => config.api_key } }
    end

    def self.paginator_setup(config)
      self.paginator = config.paginator
    end
  end
end
