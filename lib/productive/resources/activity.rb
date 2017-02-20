module Productive
  class Activity < BaseAccount
    has_one :creator, class_name: :person
    has_many :comments
    has_many :tasks
  end
end
