module Productive
  class SalesReport < BaseAccount
    has_one :deal
    has_one :manager, class_name: :person
  end
end
