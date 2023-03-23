module Productive
  class PaymentReminderSequence < BaseAccount
    has_one :creator, class_name: :person
    has_one :updater, class_name: :person

    has_many :payment_reminders
  end
end
