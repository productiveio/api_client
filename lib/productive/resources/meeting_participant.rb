module Productive
  class MeetingParticipant < BaseAccount
    has_one :person
    has_one :meeting
  end
end
