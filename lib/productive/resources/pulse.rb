module Productive
  class Pulse < BaseAccount
    has_one :creator, class_name: :person
    has_one :filter
  end
end
