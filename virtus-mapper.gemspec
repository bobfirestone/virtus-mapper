# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'virtus/mapper/version'

Gem::Specification.new do |spec|
  spec.name          = "virtus-mapper_opp_fork"
  spec.version       = Virtus::Mapper::VERSION
  spec.authors       = ["Bob Firestone"]
  spec.email         = ["rbfiresotne@me.com"]
  spec.summary       = %q{A fork of a Mapper for Virtus attributes to work on rails 4.2}
  spec.description   = %q{Mapper for Virtus attributes. See README.}
  spec.homepage      = "https://github.com/bobfirestone/virtus-mapper"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'virtus', '~> 1.0', '>= 1.0.3'
  spec.add_runtime_dependency 'activesupport', '>= 4.2.0'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.1"
end
