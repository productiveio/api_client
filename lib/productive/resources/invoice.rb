module Productive
  class Invoice < Base
    has_one :deal
    has_one :attachment
    has_one :company
  end
end
