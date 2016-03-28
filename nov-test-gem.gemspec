# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nov/test/gem/version'

Gem::Specification.new do |spec|
  spec.name          = "nov-test-gem"
  spec.version       = Nov::Test::Gem::VERSION
  spec.authors       = ["nov"]
  spec.email         = ["nov@matake.jp"]

  spec.summary       = %q{just a demo}
  spec.description   = %q{just a demo for Qiita article}
  spec.homepage      = "https://github.com/nov/nov-test-gem"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
