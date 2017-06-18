# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nmax/version'

Gem::Specification.new do |spec|
  spec.name          = 'nmax-nitr'
  spec.version       = Nmax::VERSION
  spec.authors       = ['Nitr']
  spec.email         = ['antynitr@gmail.com']

  spec.summary       = %(nmax)
  spec.description   = %(namx)
  spec.homepage      = 'https://github.com/Nitr/nmax'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.2'
end
