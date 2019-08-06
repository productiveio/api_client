module Productive
  class InvoiceAttribution < BaseAccount
    has_one :invoice
    has_one :deal
  end
end
