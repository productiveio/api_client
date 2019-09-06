module Productive
  module Reports
    class PersonReport < BaseAccount

      def self.table_name
        "reports/person_reports"
      end
    end
  end
end
