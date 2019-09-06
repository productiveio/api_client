module Productive
  module Reports
    class PaymentReport < BaseAccount
      def self.table_name
        "reports/payment_reports"
      end
    end
  end
end
