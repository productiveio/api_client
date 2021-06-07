module Productive
  module Reports
    class NewSalaryReport < BaseAccount
      def self.table_name
        "reports/salary_reports"
      end
    end
  end
end
