ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
require 'stripe/testing/rails'

puts "\e[#{33}mArtifically slowing tests to make the GIF more compelling\e[0m 🐌\n\n"
sleep(1) # 🐌

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  setup { sleep((rand(4) + 1) / 10.0) } # 🐌
end
