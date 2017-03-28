# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "pivxer/version"

Gem::Specification.new do |s|
  s.name        = "pivxer"
  s.version     = Pivxer::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Craig Williams" , "Bryce Kerley"]
  s.email       = ["craigwilliamsdev@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Control the pivx nework client over JSON-RPC.}
  s.description = %q{Automate your pivx transactions with this Ruby interface to the pivx JSON-RPC API.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'rest-client', ['~> 1.6.1']
  s.add_dependency 'activesupport', ['~> 3.0.6']

  s.add_development_dependency 'guard-test', ['~> 0.1.6']
  s.add_development_dependency 'shoulda', ['~> 2.11.3']
  s.add_development_dependency 'mocha', ['~> 0.9.12']
  s.add_development_dependency 'bundler', ['~> 1.0.12']
end
