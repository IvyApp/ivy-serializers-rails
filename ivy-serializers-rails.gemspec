require File.expand_path('../lib/ivy/serializers/rails/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name = 'ivy-serializers-rails'
  spec.version = Ivy::Serializers::Rails::VERSION
  spec.authors = ['Dray Lacy']
  spec.email = ['dray@envylabs.com']

  spec.summary = 'Rails integration for ivy-serializers.'
  spec.homepage = 'https://github.com/IvyApp/ivy-serializers-rails'

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'ivy-serializers', '~> 0.2'
  spec.add_dependency 'railties', '>= 3.2.6', '< 5'

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'combustion', '~> 0.5.3'
  spec.add_development_dependency 'json-schema-rspec'
  spec.add_development_dependency 'rails', '~> 4.2.1'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec-rails', '~> 3.2.1'
  spec.add_development_dependency 'simplecov', '~> 0.10.0'
  spec.add_development_dependency 'sqlite3', '~> 1.3.10'
end
