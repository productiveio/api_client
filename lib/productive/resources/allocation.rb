module Productive
  class Allocation < BaseAccount
    has_one :person
    has_one :client
    has_one :responsible, class_name: :person
  end
end
