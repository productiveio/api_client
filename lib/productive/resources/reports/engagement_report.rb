module Productive
  module Reports
    class EngagementReport < BaseAccount
      def self.table_name
        "reports/engagement_reports"
      end
    end
  end
end
