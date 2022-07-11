module Productive
  module Reports
    class PayrollItemReport < BaseAccount
      def self.table_name
        "reports/payroll_item_reports"
      end
    end
  end
end
