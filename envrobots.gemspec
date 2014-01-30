$:.push File.expand_path("../lib", __FILE__)

require "envrobots/version"

Gem::Specification.new do |s|
  s.name        = "envrobots"
  s.version     = Envrobots::VERSION
  s.authors     = ["James Martinez"]
  s.email       = ["jamescmartinez@gmail.com"]
  s.homepage    = "http://github.com/jamescmartinez/envrobots"
  s.summary     = "Flexible robots.txt solution for Rails."
  s.description = "Flexible robots.txt solution for Rails to use different robots.txt files depending on the environment."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", ">= 4.0.0"

  s.add_development_dependency "rspec-rails"
end
