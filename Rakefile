require 'rubygems'
require 'rake'
require 'echoe'
require 'spec/rake/spectask'

desc 'Default: run specs'
task :default => :spec

desc 'Run the specs'
Spec::Rake::SpecTask.new(:spec) do |t|
  t.spec_opts = ['--colour --format progress --loadby mtime --reverse']
  t.spec_files = FileList['spec/**/*_spec.rb']
end

Echoe.new('not', '0.0.1') do |p|
  p.description     = "Syntactic sugar for negating any results: @foo.not.nil?"
  p.url             = "http://github.com/iain/not"
  p.author          = "Iain Hecker"
  p.email           = "iain@iain.nl"
  p.ignore_pattern  = [ "tmp/*", "script/*" ]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
