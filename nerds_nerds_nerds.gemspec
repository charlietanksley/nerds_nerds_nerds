# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nerds_nerds_nerds/version'

Gem::Specification.new do |spec|
  spec.name          = "nerds_nerds_nerds"
  spec.version       = NerdsNerdsNerds::VERSION
  spec.authors       = ["Charlie Tanksley"]
  spec.email         = ["charlie.tanksley@gmail.com"]
  spec.summary       = %q{All the nerds that are fit to print.}
  spec.description   = %q{A simple tool for working with data on nerds at Big Nerd Ranch.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "nokogiri"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "webmock"
end
