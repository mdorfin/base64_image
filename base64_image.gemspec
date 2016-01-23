# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'base64_image/version'

Gem::Specification.new do |spec|
  spec.name          = "base64_image"
  spec.version       = Base64Image::VERSION
  spec.authors       = ["Maxim Dorofienko"]
  spec.email         = ["dorofienko@gmail.com"]

  spec.summary       = %q{Allows you define a proxy method to decode base64-encoded images.}
  spec.homepage      = "https://github.com/mdorfin/base64_image"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
