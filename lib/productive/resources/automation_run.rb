module Productive
  class AutomationRun < BaseAccount
    has_one :creator, class_name: :person
    has_one :automation_version
  end
end