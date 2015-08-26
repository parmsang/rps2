require File.join(File.dirname(__FILE__), '..', 'lib/rps.rb')
require 'byebug'
require 'capybara/rspec'
require 'coveralls'
require 'simplecov'
require 'rspec'
require 'capybara'

Capybara.app = RPS

RSpec.configure do |config|
  config.include Capybara::DSL
  config.expect_with :rspec do |expectations|
  expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
end

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
Coveralls.wear!
