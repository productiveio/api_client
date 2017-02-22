module Productive
  class LineItem < BaseAccount
    has_one :new_invoice
  end
end
