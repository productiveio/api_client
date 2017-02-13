module Productive
  class NewInvoice < BaseAccount
    has_one :deal
    has_one :attachment
  end
end
