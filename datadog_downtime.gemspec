# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "datadog_downtime/version"

Gem::Specification.new do |spec|
  spec.name          = "datadog_downtime"
  spec.version       = DatadogDowntime::VERSION
  spec.authors       = ["Hidetatsu Yaginuma"]
  spec.email         = ["ygnmhdtt@gmail.com"]

  spec.summary       = %q{Using Datadog-api to operate downtime.}
  spec.description   = %q{With Datadog API, operating downtime of any alerts.}
  spec.homepage      = "https://yaginumahidtatsu.com"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://yaginumahidetatsu.com"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
