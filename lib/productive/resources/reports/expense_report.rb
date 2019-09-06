module Productive
  module Reports
    class ExpenseReport < BaseAccount
      def self.table_name
        "reports/expense_reports"
      end
    end
  end
end
