module Productive
  class Contract < BaseAccount
    has_one :template, class_name: :deal
  end
end
