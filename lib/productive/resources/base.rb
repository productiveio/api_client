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
      arr = []
      page = 1

      loop do
        results = paginate(per_page: PER_PAGE, page: page).find(args)
        raise StopIteration if results.empty?
        arr += results
        page += 1
      end

      arr
    end

    def self.lazy_all
      Enumerator.new do |yielder|
        page = 1

        loop do
          results = paginate(per_page: PER_PAGE, page: page).find(args)
          raise StopIteration if results.empty?
          results.each { |item| yielder << item }
          page += 1
        end
      end.lazy
    end
  end
end
