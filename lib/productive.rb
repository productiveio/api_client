require 'json_api_client'

require 'productive/version'
require 'productive/configuration'
require 'productive/resources/base'
require 'productive/resources/base_account'
require 'productive/resources/billability_report'
require 'productive/resources/activity'
require 'productive/resources/attachment'
require 'productive/resources/comment'
require 'productive/resources/company'
require 'productive/resources/contact_entry'
require 'productive/resources/contract'
require 'productive/resources/deal'
require 'productive/resources/deal_status'
require 'productive/resources/email'
require 'productive/resources/invoice'
require 'productive/resources/line_item'
require 'productive/resources/lost_reason'
require 'productive/resources/new_invoice'
require 'productive/resources/organization'
require 'productive/resources/organization_membership'
require 'productive/resources/person'
require 'productive/resources/profitability_report'
require 'productive/resources/project'
require 'productive/resources/salary'
require 'productive/resources/salary_report'
require 'productive/resources/sales_report'
require 'productive/resources/service'
require 'productive/resources/service_type'
require 'productive/resources/task'
require 'productive/resources/task_list'
require 'productive/resources/time_entry'
require 'productive/resources/time_report'
require 'productive/resources/user'

require 'productive/railtie' if defined?(Rails::Railtie)

module Productive
  class << self
    def configure
      yield configuration

      Productive::Base.setup(@configuration)
      Productive::BaseAccount.setup(@configuration)
    end

    def configuration
      @configuration ||= Productive::Configuration.new
    end
  end
end
