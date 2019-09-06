module Productive
  module Reports
    class DealReport < BaseAccount
      def self.table_name
        "reports/deal_reports"
      end
    end
  end
end
