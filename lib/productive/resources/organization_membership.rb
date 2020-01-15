module Productive
  class OrganizationMembership < Base
    has_one :orgnaization_membership_counts, class_name: :orgnaization_membership_count
  end
end
