module Productive
  class DeletedItem < BaseAccount
    has_one :deleter, class_name: :person
  end
end
