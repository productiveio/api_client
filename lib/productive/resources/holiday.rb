module Productive
  class Holiday < BaseAccount
    has_one :subsidiary
    has_one :holiday_calendar
  end
end
