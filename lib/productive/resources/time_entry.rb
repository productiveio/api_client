module Productive
  class TimeEntry < BaseAccount
    has_one :service
    has_one :booking
  end
end
