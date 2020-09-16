module Productive
  module Reports
    class ServiceReport < BaseAccount
      def self.table_name
        "reports/service_reports"
      end
    end
  end
end
