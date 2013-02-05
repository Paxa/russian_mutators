# encoding: utf-8

Gem::Specification.new do |gem|
  gem.authors       = ["Pavel Evstigneev"]
  gem.email         = ["pavel.evst@gmail.com"]
  gem.description   = %q{Pluralization and singularization for russian words}
  gem.summary       = %q{Pluralization and singularization for russian words}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = []
  gem.test_files    = gem.files.grep(%r{^(test|spec|test_data)/})
  gem.name          = "russian_mutators"
  gem.require_paths = ["lib"]
  gem.version       = "0.1"
end