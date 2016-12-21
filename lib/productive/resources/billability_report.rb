module Productive
  class BillabilityReport < BaseAccount
    has_one :deal
    has_one :service
    has_one :person
  end
end
