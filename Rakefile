require 'rubocop/rake_task'

task default: %w[lint test]

RuboCop::RakeTask.new(:lint) do |task|
+   task.patterns = ['lib/**/*.rb', 'test/**/*.rb']
+   task.fail_on_error = false
+ end