module Productive
  class ProjectPreference < BaseAccount
    has_one :person
    has_one :project
    has_one :favorite_filter, class_name: :filter
    has_one :budgets_favorite_filter, class_name: :filter
    has_one :invoices_favorite_filter, class_name: :filter
    has_one :docs_favorite_filter, class_name: :filter
  end
end
