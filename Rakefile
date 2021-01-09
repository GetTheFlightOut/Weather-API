ENV['SINATRA_ENV'] ||= 'development'

require_relative './config/environment'

begin
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new(:spec)

  task default: :spec
rescue LoadError
  # no rspec available
end
