module Productive
  class EventReport < BaseAccount
    has_one :person
    has_one :event
  end
end
