# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "deckofcards/version"

Gem::Specification.new do |s|
  s.name        = "deckofcards"
  s.version     = Deckofcards::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Margaret Morris"]
  s.email       = ["margaretblue@gmail.com"]
  s.homepage    = "http://margaretblue.com"
  s.summary     = %q{Sample gem to generate a deck of cards}
  s.description = %q{Sample gem to generate a deck of cards.}
  s.license     = "MIT"

  s.add_runtime_dependency "launchy"
  s.add_development_dependency "minitest-capybara"
  s.add_development_dependency "rspec", "~>2.5.0"
  s.add_development_dependency "bundler", "~> 1.5"
  s.add_development_dependency "rake"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
