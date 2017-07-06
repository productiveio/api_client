module Productive
  class Payment < BaseAccount
    has_one :invoice
  end
end
