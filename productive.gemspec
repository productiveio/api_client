$:.push File.expand_path("../lib", __FILE__)
require 'productive/version'

Gem::Specification.new do |s|
  s.name = 'productive'
  s.version = Productive::VERSION.dup
  s.platform = Gem::Platform::RUBY
  s.summary = 'A JSONAPI-based client to consume Productive API'
  s.homepage = 'https://github.com/productiveio/api_client'
  s.description = 'Productive API client'
  s.authors = ['Josip Bišćan']
  s.email = 'josip@infinum.hr'
  s.license = 'MIT'
  s.files = `git ls-files`.split("\n")

  s.add_dependency 'rack'
  s.add_dependency 'json_api_client', '1.5.2'
  s.add_dependency 'request_store', '~> 1.3.2'
end
