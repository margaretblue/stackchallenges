# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hashdays/version'

Gem::Specification.new do |spec|
  spec.name          = "hashdays"
  spec.version       = Hashdays::VERSION
  spec.authors       = ["Margaret Morris"]
  spec.email         = ["margaretblue@gmail.com"]
  spec.summary       = %q{generates the 2-letter weekday abbreviation.}
  spec.description   = %q{generates the 2-letter weekday abbreviation for every day of a given month.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "launchy"
  spec.add_development_dependency "minitest-capybara"
  spec.add_development_dependency "rspec", "~>2.5.0"
end
