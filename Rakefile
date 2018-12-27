require 'rake/testtask'

desc 'Run all tests by default'
task default: :test

desc 'Run test for all advents'
task :test do
  Dir['day*'].each do |advent|
    system %(cd #{advent} && #{$0} test --trace)
  end
end
