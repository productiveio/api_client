module Productive
  class Allocation < BaseAccount
    has_one :service
    has_one :person
  end
end