module Productive
  class TeamMembership < BaseAccount
    has_one :person
    has_one :team
  end
end
