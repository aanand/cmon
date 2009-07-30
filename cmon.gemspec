# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{cmon}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Aanand Prasad"]
  s.date = %q{2009-07-30}
  s.default_executable = %q{cmon}
  s.email = %q{aanand.prasad@gmail.com}
  s.executables = ["cmon"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "bin/cmon",
     "lib/cmon.rb",
     "test/cmon_test.rb",
     "test/fixtures/index.html",
     "test/fixtures/index.out.html",
     "test/test_helper.rb"
  ]
  s.homepage = %q{http://github.com/aanand/cmon}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.4}
  s.summary = %q{HTML preprocessor for stable, cross-browser layouts}
  s.test_files = [
    "test/cmon_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
