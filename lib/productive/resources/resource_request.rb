module Productive
  class ResourceRequest < BaseAccount
    has_many :bookings
  end
end
