require 'json_api_paginator'
require 'json_api_query_builder'

module Productive
  class Configuration
    attr_accessor :api_key, :account_id, :base_url, :paginator, :query_builder, :connection_options

    def initialize
      self.api_key = ENV['PRODUCTIVE_API_KEY']
      self.account_id = ENV['PRODUCTIVE_ACCOUNT_ID']
      self.base_url = 'https://api.productive.io/api/v2/'
      self.paginator = JsonApiPaginator
      self.query_builder = JsonApiQueryBuilder
      self.connection_options = {}
    end
  end
end
