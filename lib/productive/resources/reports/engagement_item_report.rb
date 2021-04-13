module Productive
  module Reports
    class EngagementItemReport < BaseAccount
      def self.table_name
        "reports/engagement_item_reports"
      end
    end
  end
end
