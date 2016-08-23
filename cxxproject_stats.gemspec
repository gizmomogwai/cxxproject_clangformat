# -*- encoding: utf-8 -*-
gem_name = 'cxxproject_clangformat'
require File.expand_path("lib/#{gem_name}/version")

Gem::Specification.new do |gem|
  gem.name          = gem_name
  gem.version       = CxxprojectClangFormat::VERSION

  gem.authors       = ["Christian Köstlin"]
  gem.email         = ["christian.koestlin@esrlabs.com"]
  gem.description   = %q{formats sources with clang-format}
  gem.summary       = %q{...}
  gem.homepage      = "http://marcmo.github.com/cxxproject/"

  gem.files         = Dir.glob("{bin,lib}/**/*") + %w(LICENSE README.md)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'cxx'
end
