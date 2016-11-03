module Productive
  class User < Base
    has_one :default_organization, class_name: :organization
  end
end
