module Productive
  class OrganizationSubscription < BaseAccount
    has_one :organization
  end
end
