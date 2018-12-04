module Productive
  class RealProfitabilityReport < BaseAccount
    has_one :deal
    has_one :company
    has_one :project
    has_one :manager, class_name: :person
  end
end
