lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/rtwo/version'

Gem::Specification.new do |spec|
  spec.name          = 'ruboty-rtwo'
  spec.version       = Ruboty::Rtwo::VERSION
  spec.authors       = ['SHIOYA, Hiromu']
  spec.email         = ['kwappa.856@gmail.com']

  spec.summary       = 'custom handler for rubogy'
  spec.description   = spec.summary
  spec.homepage      = 'http://github.com/kwappa/rtwo'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
end
