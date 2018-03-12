# rubocop:disable Metrics/LineLength
$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "activeadmin_addons/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "activeadmin_addons"
  s.version     = ActiveadminAddons::VERSION
  s.authors     = ["Platanus", "Julio Garcia", "Emilio Blanco", "Leandro Segovia"]
  s.email       = ["rubygems@platan.us", "julioggonz@gmail.com", "emilioeduardob@gmail.com", "ldlsegovia@gmail.com"]
  s.homepage    = "https://github.com/platanus/activeadmin_addons"
  s.summary     = "Set of addons to help with the activeadmin ui"
  s.description = "Set of addons to help with the activeadmin ui"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib,vendor}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "railties"
  s.add_dependency "sass-rails"
  s.add_dependency "select2-rails", "~> 4.0"
  s.add_dependency "xdan-datetimepicker-rails", "~> 2.5.1"
  s.add_dependency "require_all", "~> 1.5"

  s.add_development_dependency "rails", "~> 4.2"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "enumerize", "~> 2.0"
  s.add_development_dependency "paperclip"
  s.add_development_dependency "aasm"

  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "pry-rails"
  s.add_development_dependency "factory_bot_rails"
  s.add_development_dependency "shoulda-matchers"
  s.add_development_dependency "guard"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "capybara-selenium"
  s.add_development_dependency "database_cleaner"
end
