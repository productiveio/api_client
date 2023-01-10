module Productive
  class Automation < BaseAccount
    has_one :creator, class_name: :person
    has_one :updater, class_name: :person
    has_one :project

    has_many :automation_versions
    has_many :automation_runs
  end
end