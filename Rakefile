require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('not', '0.0.1') do |p|
  p.description     = "Syntactic sugar for negating any results: @foo.not.nil?"
  p.url             = "http://github.com/iain/not"
  p.author          = "Iain Hecker"
  p.email           = "iain@iain.nl"
  p.ignore_pattern  = [ "tmp/*", "script/*" ]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
