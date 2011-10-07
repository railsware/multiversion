# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "multiversion/version"

Gem::Specification.new do |s|
  s.name        = "multiversion"
  s.version     = Multiversion::VERSION
  s.authors     = ["Andriy Yanko"]
  s.email       = ["andriy.yanko@gmail.com"]
  s.homepage    = "https://github.com/railsware/multiversion"
  s.summary     = %q{Testing your library against different gem versions and ruby versions using RVM and Bundler}

  s.rubyforge_project = "multiversion"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
