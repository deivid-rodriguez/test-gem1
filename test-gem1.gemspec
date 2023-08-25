# frozen_string_literal: true

require_relative "lib/test/gem1/version"

Gem::Specification.new do |spec|
  spec.name = "test-gem1"
  spec.version = Test::Gem1::VERSION
  spec.authors = ["David Rodríguez"]
  spec.email = ["deivid.rodriguez@riseup.net"]

  spec.summary = "Write a short summary, because RubyGems requires one."
  spec.homepage = "https://github.com/deivid-rodriguez/test-gem1"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.pkg.github.com/deivid-rodriguez"

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "rubocop"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
