ENV["RAILS_ENV"] ||= 'test'
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

require "safeguard-devise-test-app/config/environment"
require 'rspec/rails'
require 'safeguard-devise'
require 'orm/active_record'
require 'capybara/rails'
require 'capybara/rspec'
require 'database_cleaner'



# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/tests_helper/**/*.rb"].each {|f| require f}

RSpec.configure do |config|
  config.before :suite do
    DatabaseCleaner[:active_record].strategy = :truncation
  end
  config.include Capybara::DSL
  config.before :each do
    DatabaseCleaner.start
  end

  config.after :each do
    DatabaseCleaner.clean
  end
end
