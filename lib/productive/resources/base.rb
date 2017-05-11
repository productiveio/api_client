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
      depaginate(BaseItems.new([]), args).items
    end

    def self.lazy_all(args = {})
      Enumerator.new do |yielder|
        depaginate(LazyItems.new(yielder), args)
      end.lazy
    end

    def self.depaginate(store, args)
      page = paginate(per_page: PER_PAGE).find(args)
      store.append(page)

      loop do
        page = page.pages.next
        raise StopIteration if page.nil?
        store.append(page)
      end

      store
    end

    class BaseItems
      attr_reader :items

      def initialize(items)
        @items = items
      end

      def append(results)
        @items += results
      end
    end

    class LazyItems < BaseItems
      def append(results)
        results.each { |item| @items << item }
      end
    end
  end
end
