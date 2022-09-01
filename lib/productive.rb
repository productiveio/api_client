require 'json_api_client'
require 'request_store'

require 'productive/version'
require 'productive/configuration'
require 'productive/resources/base'
require 'productive/resources/base_account'
require 'productive/resources/activity'
require 'productive/resources/attachment'
require 'productive/resources/approval_status'
require 'productive/resources/approval_workflow'
require 'productive/resources/billability_report'
require 'productive/resources/board'
require 'productive/resources/booking'
require 'productive/resources/booking_item'
require 'productive/resources/comment'
require 'productive/resources/company'
require 'productive/resources/contact_entry'
require 'productive/resources/contract'
require 'productive/resources/custom_field'
require 'productive/resources/custom_field_option'
require 'productive/resources/dashboard'
require 'productive/resources/deal'
require 'productive/resources/deal_status'
require 'productive/resources/document_type'
require 'productive/resources/email'
require 'productive/resources/entitlement'
require 'productive/resources/event'
require 'productive/resources/event_report'
require 'productive/resources/expense'
require 'productive/resources/filter'
require 'productive/resources/holiday_calendar'
require 'productive/resources/integration'
require 'productive/resources/invoice'
require 'productive/resources/invoice_attribution'
require 'productive/resources/line_item'
require 'productive/resources/lost_reason'
require 'productive/resources/membership'
require 'productive/resources/organization'
require 'productive/resources/organization_invoice'
require 'productive/resources/organization_membership'
require 'productive/resources/organization_membership_count'
require 'productive/resources/organization_subscription'
require 'productive/resources/page'
require 'productive/resources/payment'
require 'productive/resources/person'
require 'productive/resources/pipeline'
require 'productive/resources/profitability_report'
require 'productive/resources/project'
require 'productive/resources/project_assignment'
require 'productive/resources/pulse'
require 'productive/resources/rate_card'
require 'productive/resources/report_category'
require 'productive/resources/reports/booking_report'
require 'productive/resources/reports/budget_report'
require 'productive/resources/reports/company_report'
require 'productive/resources/reports/deal_report'
require 'productive/resources/reports/entitlement_report'
require 'productive/resources/reports/expense_report'
require 'productive/resources/reports/financial_item_report'
require 'productive/resources/reports/invoice_report'
require 'productive/resources/reports/new_salary_report'
require 'productive/resources/reports/new_time_report'
require 'productive/resources/reports/payment_report'
require 'productive/resources/reports/payroll_item_report'
require 'productive/resources/reports/person_report'
require 'productive/resources/reports/project_report'
require 'productive/resources/reports/service_report'
require 'productive/resources/reports/task_report'
require 'productive/resources/reports/time_entry_report'
require 'productive/resources/salary'
require 'productive/resources/salary_report'
require 'productive/resources/sales_report'
require 'productive/resources/section'
require 'productive/resources/service'
require 'productive/resources/subsidiary'
require 'productive/resources/service_type'
require 'productive/resources/service_type_assignment'
require 'productive/resources/service_assignment'
require 'productive/resources/task'
require 'productive/resources/task_dependency'
require 'productive/resources/task_list'
require 'productive/resources/team'
require 'productive/resources/time_entry'
require 'productive/resources/time_report'
require 'productive/resources/todo'
require 'productive/resources/user'
require 'productive/resources/workflow'
require 'productive/resources/workflow_status'
require 'productive/resources/timer'
require 'productive/resources/discussion'

require 'productive/railtie' if defined?(Rails::Railtie)

module Productive
  class << self
    def configure
      yield configuration

      Productive::Base.setup(configuration)
      Productive::BaseAccount.setup(configuration)
    end

    def configuration
      RequestStore.store[:json_api_client_configuration] ||= Productive::Configuration.new
    end
  end
end
