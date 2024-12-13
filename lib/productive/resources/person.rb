module Productive
  class Person < BaseAccount
    has_one :approval_policy_assignment

    def name
      "#{first_name} #{last_name}".strip
    end
  end
end
