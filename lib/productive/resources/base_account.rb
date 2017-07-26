module Productive
  class BaseAccount < Base
    def self.connection_options_setup(config)
      if config.connection_options[:headers].nil?
        config.connection_options[:headers] = { 'X-Organization-Id' => config.account_id }
      else
        config.connection_options[:headers]['X-Organization-Id'] = config.account_id.to_s
      end

      super(config)
    end
  end
end
