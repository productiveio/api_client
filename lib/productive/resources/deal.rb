module Productive
  class Deal < BaseAccount
    has_one :deal_status
    has_one :lost_reason
  end
end
