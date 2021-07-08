module Productive
  class ApprovalWorkflow < BaseAccount
    has_many :approvers, class_name: :person
  end
end
