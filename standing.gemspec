# utf-8
$:.push File.expand_path("../lib", __FILE__)
require "standin/version"

Gem::Specification.new do |s|
  s.name        = 'standin'
  s.version     = Standin::VERSION.dup
  s.authors     = ['Jonas Höglunt']
  s.email       = ['jonas.hoglund@fjordnet.com']
  s.homepage    = 'http://github.com/jhoglund/standin'
  s.summary     = 'Dummy pages for rails'
  s.description = 'A rails engine for creating dummy pages as "standins" without the needs for routes or controllers.'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

end