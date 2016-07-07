# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kaibaibo/version'

Gem::Specification.new do |spec|
  spec.name          = "kaibaibo"
  spec.version       = Kaibaibo::VERSION
  spec.authors       = ["Philip Cole Johnson"]
  spec.email         = ["philipcolejohnson@gmail.com"]

  spec.summary       = %q{Plays a Korean version of Rock Paper Scissors}
  spec.description   = %q{RPS}
  spec.homepage      = "https://github.com/philipcolejohnson/kaibaibo"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubgems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
