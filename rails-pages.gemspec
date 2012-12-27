$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails-pages/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails-pages"
  s.version     = RailsPages::VERSION
  s.authors     = ["Paul Spieker"]
  s.email       = ["p.spieker@duenos.de"]
  s.homepage    = "https://github.com/spieker/rails-pages"
  s.summary     = "A really simple rails engine, serving text files from app/pages as HTML (currently only supports Markdown)"
  s.description = ""

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.markdown"]

  s.add_dependency "rails", "~> 3.2.9"
  s.add_dependency "redcarpet", "~> 2.2.2"
end
