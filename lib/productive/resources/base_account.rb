module Productive
  class BaseAccount < Base
    def self.site_setup(config)
      self.site = File.join config.base_url, config.account_id.to_s, '/'
    end
  end
end
