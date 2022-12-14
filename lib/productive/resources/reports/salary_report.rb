module Productive
  module Reports
    class SalaryReport < BaseAccount
      def self.table_name
        "reports/salary_reports"
      end
    end
  end
end
