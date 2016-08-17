module Productive
  class Invoice < Base
    has_one :deal
    has_one :attachment
  end
end
