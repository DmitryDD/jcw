# frozen_string_literal: true

require_relative "lib/jcw/version"

Gem::Specification.new do |spec|
  spec.name          = "jcw"
  spec.version       = JCW::VERSION
  spec.authors       = ["Alexander Starovojtov"]
  spec.email         = ["starovojtov.alexander@gmail.com"]

  spec.summary       = "Wrapper for jaeger-client"
  spec.description   = "Wrapper for the gem 'jaeger-client' with simpler customization."
  spec.homepage      = "https://github.com/Cado-Labs/jcw"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.6.0")

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", ">= 5.0", "< 7.0.0"
  spec.add_dependency "gruf", "~> 2.10"
  spec.add_dependency "httprb-opentracing", "~> 0.4.0"
  spec.add_dependency "jaeger-client", "~> 1.3.0"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "bundler-audit"
  spec.add_development_dependency "http"
  spec.add_development_dependency "http-parser"
  spec.add_development_dependency "opentracing_test_tracer"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "railties"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rubocop-config-umbrellio"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "simplecov-lcov"
  spec.metadata = {
    "rubygems_mfa_required" => "true",
  }
end
