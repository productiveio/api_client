module Productive
  module Reports
    class TimeEntryReport < BaseAccount
      def self.table_name
        "reports/time_entry_reports"
      end
    end
  end
end
