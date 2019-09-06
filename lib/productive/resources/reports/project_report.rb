module Productive
  module Reports
    class ProjectReport < BaseAccount
      def self.table_name
        "reports/project_reports"
      end
    end
  end
end
