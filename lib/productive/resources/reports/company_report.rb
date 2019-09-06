module Productive
  module Reports
    class CompanyReport < BaseAccount
      def self.table_name
        "reports/company_reports"
      end
    end
  end
end
