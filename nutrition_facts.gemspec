# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nutrition_facts/version'

Gem::Specification.new do |spec|
  spec.name          = 'nutrition_facts'
  spec.version       = NutritionFacts::VERSION
  spec.authors       = ['Matthew Preiser']
  spec.email         = ['mattpreiser@gmail.com']

  spec.summary       = 'This gem can be used to find nutritional facts for a large variety of common foods. The data is pulled from the Nutritionix API.'
  spec.homepage      = 'https://github.com/preiser/nutrition_facts'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'bin'
  spec.executables << 'nutrition-facts'
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'pry', '~> 0'
  spec.add_development_dependency 'nokogiri', '~> 0'
  spec.add_development_dependency 'open-uri-s3', '~> 0'
  spec.add_development_dependency 'json', '~> 0'
end
