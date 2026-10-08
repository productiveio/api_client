module Productive
  module Reports
    class CheckInReport < BaseAccount
      def self.table_name
        "reports/check_in_reports"
      end
    end
  end
end
