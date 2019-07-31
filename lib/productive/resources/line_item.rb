module Productive
  class LineItem < BaseAccount
    has_one :invoice
    has_one :service_type
  end
end
