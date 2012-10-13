# -*- encoding: utf-8 -*-
require File.expand_path('../lib/devise_couchrest_model/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["lainuo"]
  gem.email         = ["winfield301@gmail.com"]
  gem.description   = %q{devise couchrest_model plugin}
  gem.summary       = %q{devise couchrest_model plugin}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "devise_couchrest_model"
  gem.require_paths = ["lib"]
  gem.version       = DeviseCouchrestModel::VERSION

  gem.add_dependency 'couchrest_model', '2.0.0.beta2'
  gem.add_dependency 'devise', '>= 2.1'
end
