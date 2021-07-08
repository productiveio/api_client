module Productive
  class ApprovalWorkflow < BaseAccount
    has_many :approvers
  end
end
