class JsonApiQueryBuilder < JsonApiClient::Query::Builder
  def all
    @all ||= begin
      results = page = find
      next_page = 2

      loop do
        break if page.links.links['next'].nil?

        page = page(next_page).find
        results += page

        next_page += 1
      end

      results
    end
  end
end