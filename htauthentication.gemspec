$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "htauthentication/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "htauthentication"
  s.version     = Htauthentication::VERSION
  s.authors     = ["Kai Berkemeyer"]
  s.email       = ["info@kaiberkemeyer.de"]
  s.homepage    = "https://github.com/cajusber/htauthentication"
  s.summary     = "Htauthentication."
  s.description = "Htauthentication lets you authenticate users by an htpasswd file."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.0"

  s.add_development_dependency "sqlite3"
end
