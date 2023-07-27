module Productive
  class Email < BaseAccount
    has_one :payment_reminder
  end
end
