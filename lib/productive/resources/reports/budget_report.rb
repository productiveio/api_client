module Productive
  module Reports
    class BudgetReport < BaseAccount
      def self.table_name
        "reports/budget_reports"
      end
    end
  end
end
