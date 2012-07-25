# -*- encoding: utf-8 -*-
require File.expand_path('../lib/wake_up_neo/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["england"]
  gem.email         = ["englandpost@gmail.com"]
  gem.summary       = gem.summary = %q{Simple trick to prevent single Heroku dyno idle}
  gem.homepage      = "https://github.com/england/wake_up_neo"

  gem.add_dependency('rails', '>= 3.0.0')

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "wake_up_neo"
  gem.require_paths = ["lib"]
  gem.version       = WakeUpNeo::VERSION
end