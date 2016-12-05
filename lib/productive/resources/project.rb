module Productive
  class Project < BaseAccount
    has_one :company
    has_one :project_manager, class_name: :person
    has_one :last_actor, class_name: :person
  end
end
