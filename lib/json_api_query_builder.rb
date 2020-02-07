class JsonApiQueryBuilder < JsonApiClient::Query::Builder
  def all
    @all ||= begin
      results = []
      page_number = 1

      loop do
        page = page(page_number).find
        break if page.blank?
        results += page
        page_number += 1
      end

      results
    end
  end
end