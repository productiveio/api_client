class JsonApiQueryBuilder < JsonApiClient::Query::Builder
  def all
    @all ||= begin
      results = page = find

      loop do
        page = page.pages.next
        break if page.nil?
        results += page
      end

      results
    end
  end
end
