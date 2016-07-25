$:.push File.expand_path("../lib", __FILE__)
require 'productive_api_client/version'

Gem::Specification.new do |s|
  s.name = 'productive_api_client'
  s.version = ProductiveApiClient::VERSION.dup
  s.platform = Gem::Platform::RUBY
  s.summary = 'A JSONAPI-based client to consume Productive API'
  s.homepage = 'https://github.com/infinum/productive_api_client'
  s.description = 'Productive API client'
  s.authors = ['Josip Bišćan']
  s.email = 'josip@infinum.hr'
  s.license = 'MIT'
  s.files = `git ls-files`.split("\n")

  s.add_dependency 'json_api_client'
end
