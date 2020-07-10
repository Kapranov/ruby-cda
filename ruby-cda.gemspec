# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name        = 'ruby-cda'
  s.version     = '0.2.5'
  s.licenses    = ['MIT']
  s.summary     = "HL7 CDA Documents"
  s.description = "Parse & generation of HL7 cda documents"
  s.authors     = ["niquola"]
  s.email       = 'niquola@gmail.com'
  s.files       = `git ls-files lib`.split($/)
  s.homepage    = 'https://github.com/niquola/ruby-cda'

  s.add_dependency 'activesupport', '~> 5.0'
  s.add_dependency 'nokogiri',      '~> 1.6'
  s.add_dependency 'virtus',        '~> 1.0'
  s.add_dependency 'i18n',          '~> 1'

  s.add_development_dependency 'awesome_print',             '~> 1.7'
  s.add_development_dependency 'rspec',                     '~> 3.5'
  s.add_development_dependency 'rspec-collection_matchers', '~> 1.1'
end
