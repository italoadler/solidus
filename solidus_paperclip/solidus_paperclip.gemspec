# encoding: UTF-8
$:.push File.expand_path('../lib', __FILE__)
require 'solidus_paperclip/version'

Gem::Specification.new do |s|
  s.name        = 'solidus_paperclip'
  s.version     = SolidusPaperclip::VERSION
  s.summary     = 'Solidus extenson for Paperclip compatibility'
  s.description = 'Solidus extenson for Paperclip compatibility'
  s.license     = 'BSD-3-Clause'

  s.author      = 'Solidus Team'
  s.email       = 'contact@solidus.io'
  s.homepage    = 'https://solidus.io'

  s.files = Dir["{app,config,db,lib}/**/*", 'LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['spec/**/*']

  s.add_dependency 'solidus_core', '~> 1.0'
  s.add_dependency 'paperclip', ['>= 4.2', '< 6']

  s.add_development_dependency 'capybara'
  s.add_development_dependency 'poltergeist'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'rubocop', '0.37.2'
  s.add_development_dependency 'rubocop-rspec', '1.4.0'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end
