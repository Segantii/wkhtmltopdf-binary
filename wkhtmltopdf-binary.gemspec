# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tester/version'

Gem::Specification.new do |spec|
  spec.name          = "wkhtmltopdf-binary"
  spec.version       = "0.12.1"
  spec.authors       = ["Research Information Systems, The University of Iowa"]
  spec.email         = ["vpr-ris-developers@iowa.uiowa.edu", "mcollas@aconex.com"]
  spec.summary       = "Neatly packages the Linux, Osx binaries needed for WKHTMLTOPDF project"
  spec.description   = spec.summary
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
