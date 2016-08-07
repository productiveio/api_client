module Productive
  class Base < JsonApiClient::Resource
    def self.setup(config)
      self.site = File.join config.base_url, config.account_id.to_s, '/'
      self.connection_options = {headers: {'X-Auth-Token' => config.api_key}}
      self.paginator = config.paginator
    end
  end
end
