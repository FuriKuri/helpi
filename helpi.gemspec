# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'helpi'

Gem::Specification.new do |spec|
  spec.name          = "helpi"
  spec.version       = Helpi::VERSION
  spec.authors       = ["Theo Pack"]
  spec.email         = ["theo.pack@gmail.com"]
  spec.summary       = %q{A little command line helper.}
  spec.description   = %q{A little command line helper.}
  spec.homepage      = "https://github.com/FuriKuri/helpi"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'coveralls'
end
