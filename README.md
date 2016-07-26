# Productive API client

Productive API client is a gem based on [JsonApiClient](https://github.com/chingor13/json_api_client). It provides resource classes for resources available in Productive API.

## Installation

Include the gem in your Gemfile
```ruby
gem 'productive_api_client'
```

Bundle the Gemfile
```ruby
bundle install
```

## Initialize

If you're using the gem in Rails project, run:
```ruby
rails generate productive_api_client API_KEY ACCOUNT_ID
```
which will generate ```config/initializers/productive_api_client.rb``` initializer, setting up your `API_KEY` and `ACCOUNT ID`.

If you're using the gem in a standalone project, you need to configure the `API_KEY` and `ACCOUNT_ID` and setup the `ProductiveApiClient::Base` resource class:
```ruby
ProductiveApiClient.configure do |config|
  config.api_key = ENV['productive_api_key']
  config.account_id = ACCOUNT_ID
end

ProductiveApiClient::Base.setup
```

## Usage

For every resource available in Productive API, there is a resource class available for use similar to an `ActiveRecord` class.

Some examples:
```ruby
ProductiveApiClient::Project.all
ProductiveApiClient::Project.paginate(per_page: 50).page(5).find

ProductiveApiClient::Project.where(client_id: 1).all
```

## Customizing

This gem uses a custom `JsonApiPaginator` based on the one available in `JsonApiClient`. If you need a different paginator, you can pass it as a configuration option:
```ruby
ProductiveApiClient.configure do |config|
  config.paginator = MyCustomPaginator
end
```

By default, this gem utilises the Productive API available at https://productive.io/api/v2/, but if you need to use a different endpoint, you can pass that as a configuration option:
```ruby
ProductiveApiClient.configure do |config|
  config.base_url = 'http://productive.dev/api/v2/'
end
```

## Credits
Productive API client is maintained and sponsored by [Infinum](https://infinum.co) and [Productive](https://productive.io).

## License
Copyright &copy; 2016 Infinum.
Productive API client is free software, and may be redistributed under the terms specified in the LICENSE file.
