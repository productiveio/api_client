module Productive
  class AutomationVersion < BaseAccount
    has_one :automation
    has_one :creator, class_name: :person

    has_many :automation_runs
  end
end