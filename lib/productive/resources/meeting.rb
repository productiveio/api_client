module Productive
  class Meeting < BaseAccount
    has_one :creator, class_name: 'Person'
    has_one :deal
    has_one :project
    has_many :meeting_participants
  end
end
