module Productive
  class BankAccount < BaseAccount
    has_one :subsidiary
    has_one :creator, class_name: :person
    has_one :updater, class_name: :person
  end
end
