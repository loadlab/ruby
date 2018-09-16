
lib = File.expand_path("../lib", __FILE__)

$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "loadlab/version"

Gem::Specification.new do |spec|
  spec.name          = "LoadLab"
  spec.version       = LoadLab::VERSION
  spec.authors       = ["Michael"]
  spec.email         = ["imichael@pm.me"]

  spec.summary       = "LoadLab Ruby API Client Wrapper"
  spec.description   = "LoadLab Ruby API Client Wrapper"
  spec.homepage      = "https://github.com/loadlab/ruby"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes"
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = ['lib/loadlab.rb']

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_runtime_dependency 'httparty', '~> 0.16.2'

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rspec_junit_formatter", "~> 0.4.1"
end
