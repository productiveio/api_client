module Productive
  class OrganizationSubscription < BaseAccount
    has_one :invoice
    has_one :deal
  end
end
