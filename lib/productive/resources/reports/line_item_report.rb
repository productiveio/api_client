module Productive
  module Reports
    class LineItemReport < BaseAccount
      def self.table_name
        "reports/line_item_reports"
      end
    end
  end
end
