# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_event_store_cache/version'

Gem::Specification.new do |spec|
  spec.name          = "rails_event_store_cache"
  spec.version       = RailsEventStoreCache::VERSION
  spec.authors       = ['gottfrois', 'mpraglowski']
  spec.email         = ['tomek.rybka@gmail.com', 'm@praglowski.com']

  spec.summary       = %q{Mongoid events repository for Rails Event Store}
  spec.description   = %q{Implementation of events repository based on Mongoid for Rails Event Store'}
  spec.homepage      = 'https://github.com/arkency/rails_event_store_mongoid'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rspec"

  
end
