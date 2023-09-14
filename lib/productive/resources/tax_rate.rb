module Productive
  class TaxRate < BaseAccount
    has_many :line_items
  end
end
