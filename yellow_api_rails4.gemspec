# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yellow_api_rails4/version'

Gem::Specification.new do |spec|
  spec.name          = "yellow_api_rails4"
  spec.version       = YellowApiRails4::VERSION
  spec.authors       = ["Ulric Toinon"]
  spec.email         = ["ulric.toinon@gmail.com"]
  spec.summary       = %q{Wrapper for Yellow API. Required rails 4}
  spec.description   = %q{A ruby wrapper for Yellow API include Place and Deals API}
  spec.homepage      = "https://github.com/ianbishop/yellow_api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.3.2"
  spec.add_runtime_dependency "i18n", '~> 0.6.9'
  spec.add_runtime_dependency 'faraday', '~> 0.7.6'
  spec.add_runtime_dependency 'faraday_middleware', '~> 0.7.0'
  spec.add_runtime_dependency 'hashie', '~> 1.2.0'
  spec.add_runtime_dependency 'multi_json', '~> 1.10.1'
  spec.add_runtime_dependency 'rash', '~> 0.3.2'
  spec.add_runtime_dependency 'uuid', '~> 2.3.7'
  spec.add_runtime_dependency 'activesupport', '~> 4.0.0'
end
