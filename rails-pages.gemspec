$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails-pages/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails-pages"
  s.version     = RailsPages::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of RailsPages."
  s.description = "TODO: Description of RailsPages."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.9"
  s.add_dependency "redcarpet", "~> 2.2.2"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
