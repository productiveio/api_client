require 'rails'

module Productive
  class Railtie < Rails::Railtie
    config.after_initialize do
      Productive::Base.setup
    end
  end
end
