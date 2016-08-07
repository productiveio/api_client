require 'rails'

module Productive
  class Railtie < Rails::Railtie
    config.after_initialize do
      Productive::Base.setup(Productive.configuration)
    end
  end
end
