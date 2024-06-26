module Productive
  class Subsidiary < BaseAccount
    has_one :organization
    has_one :bill_from, class_name: :contact_entry
    has_one :custom_domain
  end
end
