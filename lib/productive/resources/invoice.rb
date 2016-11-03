module Productive
  class Invoice < BaseAccount
    has_one :deal
    has_one :attachment
    has_one :company
  end
end
