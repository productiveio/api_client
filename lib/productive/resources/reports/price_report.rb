module Productive
    module Reports
        class PriceReport < BaseAccount
            def self.table_name
                "reports/price_reports"
            end
        end
    end
end
