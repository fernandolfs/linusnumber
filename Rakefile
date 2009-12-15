require 'rake/testtask'

task :default => [:test]

task :test do
  Rake::TestTask.new do |t|
    t.libs << 'test'
    t.options = '-v'
    t.verbose = false
    t.warning = false
    t.test_files = FileList['test/**/test_*.rb']
  end
end
