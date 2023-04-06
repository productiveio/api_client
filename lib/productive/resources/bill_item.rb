module Productive
  class BillItem < BaseAccount
    has_one :creator, class_name: :person
    has_one :updater, class_name: :person
  end
end
