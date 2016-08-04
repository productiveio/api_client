require 'rack'

class JsonApiPaginator
  attr_reader :params, :result_set, :links, :meta

  def initialize(result_set, data)
    @params = params_for_uri(result_set.uri)
    @result_set = result_set
    @links = data['links']
    @meta = data['meta']
  end

  def next
    links['next'] ? result_set.links.fetch_link('next') : nil
  end

  def prev
    links['prev'] ? result_set.links.fetch_link('prev') : nil
  end

  def first
    links['first'] ? result_set.links.fetch_link('first') : nil
  end

  def last
    links['last'] ? result_set.links.fetch_link('last') : nil
  end

  def total_pages
    if links['last']
      uri = result_set.links.link_url_for('last')
      last_params = params_for_uri(uri)
      last_params['page']['number'].to_i
    else
      current_page
    end
  end

  def total_entries
    meta['total_count'].to_i || per_page * total_pages
  end
  alias_method :total_count, :total_entries

  def per_page
    params['page']['size'].to_i
  end

  def current_page
    (params['page']['number'] || 1).to_i
  end

  def previous_page
    current_page > 1 ? (current_page - 1) : nil
  end

  def next_page
    current_page < total_pages ? (current_page + 1) : nil
  end

  private
  def params_for_uri(uri)
    return {} unless uri
    uri = Addressable::URI.parse(uri)
    Rack::Utils.parse_nested_query(uri.query || '')
  end
end
