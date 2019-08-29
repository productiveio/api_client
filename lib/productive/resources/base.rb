module Productive
  class Base < JsonApiClient::Resource
    PER_PAGE = 1000

    def self.site
      RequestStore.store[:json_api_client_base_site]
    end

    def self.site=(site)
      RequestStore.store[:json_api_client_base_site] = site
    end

    def self.connection_options
      RequestStore.store[:json_api_client_base_connection_options]
    end

    def self.connection_options=(options)
      RequestStore.store[:json_api_client_base_connection_options] = options
    end

    def self.connection_object
      RequestStore.store[:json_api_client_base_connection_object]
    end

    def self.connection_object=(connection)
      RequestStore.store[:json_api_client_base_connection_object] = connection
    end

    def self.setup(config)
      site_setup config
      connection_options_setup config
      paginator_setup config
      query_builder_setup config
      reset_connection
    end

    def self.site_setup(config)
      self.site = File.join config.base_url, self.namespace.to_s, '/'
    end

    def self.namespace
    end

    def self.connection_options_setup(config)
      if config.connection_options[:headers].nil?
        config.connection_options[:headers] = { 'X-Auth-Token' => config.api_key }
      else
        config.connection_options[:headers]['X-Auth-Token'] = config.api_key
      end

      self.connection_options = config.connection_options
    end

    def self.paginator_setup(config)
      self.paginator = config.paginator
    end

    def self.query_builder_setup(config)
      self.query_builder = config.query_builder
    end

    def self.reset_connection
      connection(rebuild: true)
    end
  end
end
