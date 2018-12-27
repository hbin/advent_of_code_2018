# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'Advent Of Code 2018'
  spec.version       = '0.1'
  spec.authors       = ['Huang Bin']
  spec.email         = ['huangbin88@foxmail.com']
  spec.summary       = %(Advent Of Code 2018)
  spec.description   = %(Advent Of Code 2018)
  spec.homepage      = 'https://adventofcode.com/'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($RS)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec)/})
  spec.require_paths = ['**/lib']
end
