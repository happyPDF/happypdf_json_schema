# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'happypdf_schema/version'

Gem::Specification.new do |s|
  s.version = HappyPdf::Schema::VERSION
  s.date = %q{2012-12-23}
  s.name = %q{happypdf_json_schema}
  s.summary = 'happyPDF API - JSON Schema'
  s.description = %q{happyPDF JSON Schema describes our PDF API in terms of available objects, their fields and links to url endpoints with related objects.
Besides ruby users can use a small lib with utility methods to load and test the schema files.}
  s.authors = ['Georg Leciejewski']
  s.email = %q{gl@happypdf.com}
  s.homepage = %q{http://github.com/happypdf/happypdf_json_schema}
  s.extra_rdoc_files = ['README.rdoc']
  s.executables   = nil
  s.files         = `git ls-files`.split("\n").reject{|i| i[/^docs\//] }
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ['lib']
  s.rubygems_version = '1.8.24'

  s.add_runtime_dependency 'activesupport'
  s.add_development_dependency 'rdoc'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'rake', '>= 0.9.2'

end