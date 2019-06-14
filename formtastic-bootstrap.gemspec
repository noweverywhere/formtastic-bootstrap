require File.expand_path('../lib/formtastic_rebootstrap/version', __FILE__)

Gem::Specification.new do |s|
  s.name = "formtastic_rebootstrap"
  s.version = FormtasticRebootstrap::VERSION
  s.authors = ["Matthew Bellantoni", "Aaron Stone"]
  s.email = ["mjbellantoni@yahoo.com", "aaron@serendipity.cx"]
  s.homepage = "http://github.com/noweverywhere/formtastic_rebootstrap"
  s.description = "Formtastic form builder to generate Twitter Bootstrap-friendly markup."
  s.summary = "Formtastic form builder to generate Twitter Bootstrap-friendly markup."
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = Dir[
    ".document",
    "LICENSE.txt",
    "README.md",
    "VERSION",
    "lib/**/*.rb",
    "vendor/assets/stylesheets/formtastic_rebootstrap.css"
  ]
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]

  s.add_dependency('formtastic', [">= 3.0"])
  s.add_dependency('bootstrap', [">= 4.0"])

  s.add_development_dependency('rake')
  s.add_development_dependency('tzinfo')
  s.add_development_dependency('bundler')
  s.add_development_dependency('nokogiri', ["< 1.6.0"])
  s.add_development_dependency('rspec_tag_matchers', ["~> 1.0"])
  s.add_development_dependency('ammeter', ["~> 0.2"])
  s.add_development_dependency('actionpack', ["~> 3.2"])
end
