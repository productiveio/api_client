module Productive
  module Reports
    class FinancialItemReport < BaseAccount
      def self.table_name
        "reports/financial_item_reports"
      end
    end
  end
end
