module Productive
  class Deal < BaseAccount
    has_one :deal_status
    has_one :lost_reason
    has_one :tax_rate

    custom_endpoint :open, on: :member, request_method: :put
    custom_endpoint :close, on: :member, request_method: :put
    custom_endpoint :convert_to_budget, on: :member, request_method: :put
  end
end
