# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mongoid-rating}
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Łukasz Śliwa"]
  s.date = %q{2011-08-09}
  s.description = %q{Simple rating solution for mongoid}
  s.email = %q{lukasz.sliwa@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "lib/mongoid-rating.rb",
    "spec/models/photo.rb",
    "spec/models/user.rb",
    "spec/mongoid-rating_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/mrplum/mongoid-rating}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Rating solution for mongoid}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mongoid>, [">= 2.0.2"])
      s.add_runtime_dependency(%q<rdoc>, [">= 2.5.11"])
      s.add_development_dependency(%q<bson_ext>, [">= 1.3.1"])
      s.add_development_dependency(%q<rspec-core>, [">= 2.6.3"])
      s.add_development_dependency(%q<rspec>, [">= 2.6.0"])
      s.add_development_dependency(%q<database_cleaner>, [">= 0.6.7"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.0"])
      s.add_development_dependency(%q<rcov>, [">= 0.9.10"])
    else
      s.add_dependency(%q<mongoid>, [">= 2.0.2"])
      s.add_dependency(%q<rdoc>, [">= 2.5.11"])
      s.add_dependency(%q<bson_ext>, [">= 1.3.1"])
      s.add_dependency(%q<rspec-core>, [">= 2.6.3"])
      s.add_dependency(%q<rspec>, [">= 2.6.0"])
      s.add_dependency(%q<database_cleaner>, [">= 0.6.7"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.0"])
      s.add_dependency(%q<rcov>, [">= 0.9.10"])
    end
  else
    s.add_dependency(%q<mongoid>, [">= 2.0.2"])
    s.add_dependency(%q<rdoc>, [">= 2.5.11"])
    s.add_dependency(%q<bson_ext>, [">= 1.3.1"])
    s.add_dependency(%q<rspec-core>, [">= 2.6.3"])
    s.add_dependency(%q<rspec>, [">= 2.6.0"])
    s.add_dependency(%q<database_cleaner>, [">= 0.6.7"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.0"])
    s.add_dependency(%q<rcov>, [">= 0.9.10"])
  end
end

