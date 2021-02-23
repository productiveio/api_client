module Productive
  class Filter < BaseAccount
    has_one :organization
    has_one :report_category
  end
end
