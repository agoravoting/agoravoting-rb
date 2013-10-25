# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'agoravoting/version'

Gem::Specification.new do |spec|
  spec.name          = "agora-voting-rb"
  spec.version       = Agoravoting::VERSION
  spec.authors       = ["Raimond Garcia", "Hector Perez"]
  spec.email         = ["hecpeare@gmail.com"]
  spec.description   = %q{AgoraVoting API wrapper in Ruby}
  spec.summary       = %q{wrapper for a Liquid Voting software}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
