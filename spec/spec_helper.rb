require 'simplecov'

SimpleCov.start

require 'combustion'

ENV['RAILS_ENV'] ||= 'test'
Combustion.initialize! :action_controller, :active_record

require 'rspec/rails'
require 'json-schema-rspec'

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'ivy/serializers/rails'

RSpec.configure do |config|
  config.include JSON::SchemaMatchers, :type => :controller

  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = File.expand_path('../fixtures', __FILE__)

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  config.use_transactional_fixtures = true

  # Load schema files into config.json_schemas.
  Dir[File.join(File.expand_path('../schemas', __FILE__), '**', '*.json')].each do |file|
    config.json_schemas[File.basename(file, '.json').to_sym] = file
  end
end
