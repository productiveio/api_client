module Productive
  module Reports
    class BookingReport < BaseAccount
      def self.table_name
        "reports/booking_reports"
      end
    end
  end
end
