module Productive
  class NewInvoice < BaseAccount
    has_one :deal
    has_one :attachment
    has_one :document_type
  end
end
