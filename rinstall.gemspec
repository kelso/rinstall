# frozen_string_literal: true

require_relative "lib/rinstall/version"

Gem::Specification.new do |spec|
  spec.name = "rinstall"
  spec.version = Rinstall::VERSION
  spec.authors = ["Stefan Huska"]
  spec.email = ["stefan.huska@gmail.com"]

  spec.summary = "Install and integrate ruby gems to rails app fast"
  spec.description = "Quickly install Bootstrap 5 (and more in the future) to your Rails app"
  spec.homepage = "https://github.com/kelso/rinstall"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/kelso/rinstall"
  spec.metadata["changelog_uri"] = "https://github.com/kelso/rinstall/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency "thor"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
