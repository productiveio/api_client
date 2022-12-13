module Productive
  module Reports
    class NewDealReport < BaseAccount
      def self.table_name
        "reports/new_deal_reports"
      end
    end
  end
end
