$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "allport/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "allport"
  s.version     = "0.1.1"
  s.authors     = ["Claudio Brandolino"]
  s.email       = ["cbrandolino@gmail.com"]
  s.homepage    = "https://github.com/baphomet-berlin/allport"
  s.summary     = "A Rails engine for contact management"
  s.description = "A Rails engine for contact management"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5.2"

  s.add_development_dependency "sqlite3"
end
