module Productive
  class AutomationVersion < BaseAccount
    has_one :automation

    has_many :automation_runs
  end
end
