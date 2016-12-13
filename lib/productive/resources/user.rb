module Productive
  class User < Base
    has_one :default_organization, class_name: :organization
    has_one :default_organization_membership, class_name: :organization_membership
  end
end
