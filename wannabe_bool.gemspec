lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wannabe_bool/version'

Gem::Specification.new do |spec|
  spec.name          = 'wannabe_bool'
  spec.version       = WannabeBool::VERSION
  spec.author        = 'Prodis a.k.a. Fernando Hamasaki de Amorim'
  spec.email         = 'prodis@gmail.com'
  spec.summary       = 'If string, numeric, symbol and nil values wanna be a boolean value, they can with the new #to_b method (and more).'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/prodis/wannabe_bool'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.platform = Gem::Platform::RUBY

  spec.add_development_dependency 'coveralls', '~> 0.8.21'
  spec.add_development_dependency 'pry', '~> 0.11.2'
  spec.add_development_dependency 'rake', '~> 12.2', '>= 12.2.1'
  spec.add_development_dependency 'rspec', '~> 3.7'
end
