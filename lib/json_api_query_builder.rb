class JsonApiQueryBuilder < JsonApiClient::Query::Builder
  def all
    @all ||= begin
      results = []

      meta.total_pages.times do |page|
        results += page(page + 1).find
      end

      results
    end
  end
end