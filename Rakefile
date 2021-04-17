require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

namespace :my_tasks do
  desc 'テスト用のタスクです'
  task :hello_world do
    puts 'hello, world'
  end
end
