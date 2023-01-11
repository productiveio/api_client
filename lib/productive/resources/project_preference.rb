module Productive
  class ProjectPreference < BaseAccount
    has_one :creator, class_name: :person
    has_one :person
    has_one :project
    has_one :favorite_filter, class_name: :filter
  end
end
