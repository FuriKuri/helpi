# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'helpi'

Gem::Specification.new do |spec|
  spec.name          = "helpi"
  spec.version       = Helpi.version
  spec.authors       = ["Theo Pack"]
  spec.email         = ["tf.pack@gmail.com"]
  spec.summary       = %q{A little command line helper.}
  spec.description   = %q{Tool, which can be run from the terminal.}
  spec.homepage      = 'https://github.com/FuriKuri/helpi'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'json', '~> 1.8'
  spec.add_dependency 'rest_client', '~> 1.7'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake', '~> 10.3'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'simplecov', '~> 0.8'
  spec.add_development_dependency 'coveralls', '~> 0.7'
end
