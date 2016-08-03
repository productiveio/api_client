require 'json_api_paginator'

module Productive
  class Configuration
    attr_accessor :api_key
    attr_accessor :account_id
    attr_accessor :base_url
    attr_accessor :paginator

    def initialize
      self.api_key = ENV['PRODUCTIVE_API_KEY']
      self.account_id = nil
      self.base_url = 'https://productive.io/api/v2/'
      self.paginator = JsonApiPaginator
    end
  end
end
