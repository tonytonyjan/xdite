$:.push File.expand_path('../lib', __FILE__)
require 'xdite/version'

Gem::Specification.new do |s|
  s.name        = 'xdite'
  s.version     = Xdite::VERSION
  s.licenses    = ['MIT']
  s.summary     = 'Prints famouse quotes.'
  s.description = 'Prints famouse quotes.'
  s.authors     = ['Tony Jian']
  s.email       = 'tonytonyjan@gmail.com'
  s.files       = Dir['lib/**/*.{rb,txt}']
  s.executables = 'xdite'
  s.homepage    = 'https://github.com/tonytonyjan/xdite'
  s.add_runtime_dependency 'thor'
end