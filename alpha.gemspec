# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'alpha/version'

Gem::Specification.new do |spec|
  spec.name          = "alpha"
  spec.version       = Alpha::VERSION
  spec.authors       = ["Cevaris"]
  spec.email         = ["cevaris@gmail.com"]
  spec.description   = %q{Alpha is a CLI that allows development and deployment of distributed systems}
  spec.summary       = spec.description
  spec.homepage      = ""
  spec.license       = "MIT"
  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  
  spec.add_development_dependency "rspec", "~> 2.14.1"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end



Bundler.require(:default, :development)