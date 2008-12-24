# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{not}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Iain Hecker"]
  s.date = %q{2008-12-24}
  s.description = %q{Syntactic sugar for negating any results: @foo.not.nil?}
  s.email = %q{iain@iain.nl}
  s.extra_rdoc_files = ["lib/not.rb", "CHANGELOG.rdoc", "README.rdoc"]
  s.files = ["Rakefile", "lib/not.rb", "init.rb", "CHANGELOG.rdoc", "spec/not_spec.rb", "README.rdoc", "Manifest", "not.gemspec"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/iain/not}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Not", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{not}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Syntactic sugar for negating any results: @foo.not.nil?}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
