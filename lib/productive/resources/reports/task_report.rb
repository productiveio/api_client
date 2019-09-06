module Productive
  module Reports
    class TaskReport < BaseAccount
      def self.table_name
        "reports/task_reports"
      end
    end
  end
end
