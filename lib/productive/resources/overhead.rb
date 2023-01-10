module Productive
  class Overhead < BaseAccount
    has_one :updater, class_name: :person
    has_one :subsidiary
  end
end
