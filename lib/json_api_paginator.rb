class JsonApiPaginator < JsonApiClient::Paginating::NestedParamPaginator
  self.page_param = 'number'
  self.per_page_param = 'size'

  attr_reader :meta

  def initialize(result_set, data)
    super
    @meta = data['meta'] || {}
  end

  def total_entries
    meta['total_count'].to_i || super
  end
end
