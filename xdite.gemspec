$:.push File.expand_path('../lib', __FILE__)
require 'xdite/version'

Gem::Specification.new do |s|
  s.name        = 'xdite'
  s.version     = Xdite::VERSION
  s.licenses    = ['MIT']
  s.summary     = 'Command line tool taht prints famous quotes.'
  s.description = 'Command line tool taht prints famous quotes.'
  s.authors     = ['Tony Jian']
  s.email       = 'tonytonyjan@gmail.com'
  s.files       = Dir['lib/**/*.{rb,txt}']
  s.executables = 'xdite'
  s.homepage    = 'https://github.com/tonytonyjan/xdite'
  s.add_runtime_dependency 'thor'
  s.post_install_message = <<EOS
============================================
Thanks for installing!
A new command `xdite` was added, enjoy!
============================================
EOS
end