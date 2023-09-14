module Productive
  class TaxRate < BaseAccount
    has_one :subsidiary
    has_one :creator, class_name: :person
    has_one :updater, class_name: :person

    has_many :line_items
  end
end
