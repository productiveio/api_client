module Productive
  class BaseAccount < Base
    def self.site
      RequestStore.store[:json_api_client_base_account_site]
    end

    def self.site=(site)
      RequestStore.store[:json_api_client_base_account_site] = site
    end

    def self.connection_object
      RequestStore.store[:json_api_client_base_account_connection_object]
    end

    def self.connection_object=(connection)
      RequestStore.store[:json_api_client_base_account_connection_object] = connection
    end

    def self.site_setup(config)
      self.site = File.join config.base_url, config.account_id.to_s, '/'
    end
  end
end
