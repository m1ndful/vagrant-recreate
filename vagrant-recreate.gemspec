# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-recreate/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-recreate"
  spec.version       = VagrantPlugins::Recreate::VERSION
  spec.authors       = ["Andrey Semenchenko"]
  spec.email         = ["m1ndful@protonmail.com"]
  spec.summary       = %q{vagrant plugin that helps re-create environment.}
  spec.description   = %q{This plugin automates vagrant environment re-creation by invoking up and destroy commands sequentially.}
  spec.homepage      = "https://github.com/m1ndful"
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12.5"
  spec.add_development_dependency "rake", "~> 10.0"
end
