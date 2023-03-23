module Productive
  class PaymentReminder < BaseAccount
    has_one :creator, class_name: :person
    has_one :updater, class_name: :person
    has_one :invoice
    has_one :payment_reminder_sequence
  end
end
