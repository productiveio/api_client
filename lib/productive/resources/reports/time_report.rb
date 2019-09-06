module Productive
  module Reports
    class TimeReport < BaseAccount
      def self.table_name
        "reports/time_reports"
      end
    end
  end
end
