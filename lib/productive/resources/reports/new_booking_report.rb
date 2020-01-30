module Productive
  module Reports
    class NewBookingReport < BaseAccount
      def self.table_name
        "reports/booking_reports"
      end
    end
  end
end
