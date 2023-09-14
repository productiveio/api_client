module Productive
  class LineItem < BaseAccount
    has_one :invoice
    has_one :service_type
    has_one :tax_rate
  end
end
