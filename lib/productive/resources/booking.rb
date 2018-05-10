module Productive
  class Booking < BaseAccount
    has_one :event
  end
end
