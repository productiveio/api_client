module Productive
  class Person < BaseAccount
    def name
      "#{first_name} #{last_name}".strip
    end
  end
end
