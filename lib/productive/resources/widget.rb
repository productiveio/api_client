module Productive
  class Widget < BaseAccount
    has_one :dashboard
    has_one :filter
  end
end
