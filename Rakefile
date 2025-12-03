require "bundler/gem_tasks"
require "rake/extensiontask"

Rake::ExtensionTask.new("my_gem") do |ext|
  ext.lib_dir = "lib/my_gem"
end

task default: :compile

desc "Clean and recompile"
task :recompile do
  sh "rm -f lib/my_gem/*.{so,bundle,o}"
  sh "rm -rf tmp/"
  Rake::Task[:compile].invoke
end
