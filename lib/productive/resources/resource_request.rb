module Productive
  class ResourceRequest < BaseAccount
    has_one :service
    has_one :creator, class_name: :person
    has_one :updater, class_name: :person
    has_one :resolver, class_name: :person
  end
end
