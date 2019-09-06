module Productive
  module Reports
    class InvoiceReport < BaseAccount
      def self.table_name
        "reports/invoice_reports"
      end
    end
  end
end
