module Productive
  class Base < JsonApiClient::Resource
    PER_PAGE = 1000

    def self.setup(config)
      site_setup config
      connection_options_setup config
      paginator_setup config
    end

    def self.site_setup(config)
      self.site = File.join config.base_url, '/'
    end

    def self.connection_options_setup(config)
      self.connection_options = { headers: { 'X-Auth-Token' => config.api_key } }
    end

    def self.paginator_setup(config)
      self.paginator = config.paginator
    end

    def self.all(args = {})
      depaginate([], args)
    end

    def self.lazy_all(args = {})
      Enumerator.new do |yielder|
        depaginate(yielder, args, true)
      end.lazy
    end

    def self.depaginate(store, args, lazy = false)
      page = paginate(per_page: PER_PAGE).find(args)
      store = add_to_store(store, page, lazy)

      loop do
        page = page.pages.next
        raise StopIteration if page.nil?
        store = add_to_store(store, page, lazy)
      end

      store
    end

    def self.add_to_store(store, result, lazy)
      if lazy
        result.each { |item| store << item }
      else
        store += result
      end

      store
    end
  end
end
