module Productive
  class Contract < Base
    has_one :template, class_name: :deal
  end
end
