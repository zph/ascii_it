# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ascii_it/version'

Gem::Specification.new do |spec|
  spec.name          = "ascii_it"
  spec.version       = AsciiIt::VERSION
  spec.authors       = ["Zander Hill"]
  spec.email         = ["Zander@civet.ws"]
  spec.summary       = %q{Single method on string to strip non-ASCII garbage.}
  spec.description   = %q{Single method on string to strip non-ASCII garbage.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
