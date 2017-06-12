module Productive
  class LineItem < BaseAccount
    has_one :invoice
  end
end
