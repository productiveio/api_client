module Productive
  module Reports
    class EntitlementReport < BaseAccount
      def self.table_name
        "reports/entitlement_reports"
      end
    end
  end
end
