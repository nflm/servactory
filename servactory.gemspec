# frozen_string_literal: true

require_relative "lib/servactory/version"

Gem::Specification.new do |spec|
  spec.name          = "servactory"
  spec.version       = Servactory::VERSION::STRING
  spec.platform      = Gem::Platform::RUBY

  spec.authors       = ["Anton Sokolov"]
  spec.email         = ["profox.rus@gmail.com"]

  spec.summary       = "A set of tools for building reliable services of any complexity"
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/servactory/servactory"

  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["documentation_uri"] = "https://servactory.com"
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["bug_tracker_uri"] = "#{spec.homepage}/issues"
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/master/CHANGELOG.md"

  spec.metadata["rubygems_mfa_required"] = "true"

  spec.files = Dir["config/**/*", "lib/**/*", "Rakefile", "README.md"]
  spec.require_paths = ["lib"]

  spec.required_ruby_version = Gem::Requirement.new(">= 3.1.0")

  spec.add_dependency "activesupport", ">= 5.1", "< 8.1"
  spec.add_dependency "base64", "~> 0.2"
  spec.add_dependency "bigdecimal", "~> 3.0"
  spec.add_dependency "i18n", "~> 1.14"
  spec.add_dependency "mutex_m", "~> 0.2"
  spec.add_dependency "zeitwerk", "~> 2.6"

  spec.add_development_dependency "appraisal", "~> 2.5"
  spec.add_development_dependency "async", ">= 1.31"
  spec.add_development_dependency "datory", ">= 2.1.0"
  spec.add_development_dependency "pry", "~> 0.14"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rbs", ">= 3.1.3"
  spec.add_development_dependency "rspec", "~> 3.12"
  spec.add_development_dependency "servactory-rubocop", ">= 0.1"
  spec.add_development_dependency "steep", "~> 1.5"
  spec.add_development_dependency "yard", "~> 0.9"
end
