# Productive API client

Productive API client is a gem based on [JsonApiClient](https://github.com/chingor13/json_api_client). It provides resource classes for resources available in Productive API.

## Installation

Include the gem in your Gemfile
```ruby
gem 'productive'
```

Bundle the Gemfile
```ruby
bundle install
```

## Initialize

If you're using the gem in Rails project, run:
```ruby
rails generate productive API_KEY ACCOUNT_ID
```
which will generate ```config/initializers/productive.rb``` initializer, setting up your `API_KEY` and `ACCOUNT ID`.

If you're using the gem in a standalone project, you need to configure the `API_KEY` and `ACCOUNT_ID`:
```ruby
Productive.configure do |config|
  config.api_key = ENV.fetch('productive_api_key')
  config.account_id = ACCOUNT_ID
end
```

## Usage

For every resource available in Productive API, there is a resource class available for use similar to an `ActiveRecord` class.

Some examples:
```ruby
Productive::Project.all
Productive::Project.paginate(per_page: 50).page(5).find

Productive::Project.where(client_id: 1).all
Productive::Project.where(
  created_at: {
    lt_eq: '2025-04-30',
    gt_eq: '2025-03-31'
  }
).paginate(page: 1, per_page: 200).all
```

## Customizing

This gem uses a custom `JsonApiPaginator` based on the one available in `JsonApiClient`. If you need a different paginator, you can pass it as a configuration option:
```ruby
Productive.configure do |config|
  config.paginator = MyCustomPaginator
end
```

By default, this gem utilises the Productive API available at https://api.productive.io/api/v2/, but if you need to use a different endpoint, you can pass that as a configuration option:
```ruby
Productive.configure do |config|
  config.base_url = 'http://api.productive.dev/api/v2/'
end
```

## Credits
Productive API client is maintained by [Productive](https://productive.io) and sponsored by [Infinum](https://infinum.co).

## License
Copyright &copy; 2017 Productive, Infinum.
Productive API client is free software, and may be redistributed under the terms specified in the LICENSE file.
