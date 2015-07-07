# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "seekingalpha_thread"
  spec.version       = "1.0.0"
  spec.authors       = ["Michel Epsztejn"]
  spec.email         = ["michel@seekingalpha.com"]
  spec.summary       = %q{Various extensions to the base thread library.}
  spec.description   = %q{Forked from meh/ruby-thread. Fixes thread limit exception. Includes a thread pool, message passing capabilities, a recursive mutex, promise, future and delay.}
  spec.homepage      = "https://github.com/seekingalpha/ruby-thread"
  spec.license       = "WTFPL"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rake"
end
