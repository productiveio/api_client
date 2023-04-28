module Productive
  module Reports
    class PurchaseOrderReport < BaseAccount
      def self.table_name
        "reports/purchase_order_reports"
      end
    end
  end
end
