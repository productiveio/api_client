module Productive
  class Booking < BaseAccount
    has_one :event
    has_many :approval_statuses
  end
end
