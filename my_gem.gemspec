require_relative "lib/my_gem/version"

Gem::Specification.new do |spec|
  spec.name          = "my_gem"
  spec.version       = MyGem::VERSION
  spec.authors       = ["Name"]
  spec.email         = ["email@example.com"]

  spec.summary       = "Ruby native extension"
  spec.description   = "A gem with C extension"
  spec.homepage      = ""
  spec.license       = ""
  spec.required_ruby_version = ">= 2.2.7"

  spec.files = Dir[
    "lib/**/*.rb",
    "ext/**/*.{c,h,rb}",
    "README.md",
    "LICENSE.txt"
  ]

  spec.require_paths = ["lib"]

  spec.extensions = ["ext/my_gem/extconf.rb"]

  spec.add_development_dependency "rake"
  spec.add_development_dependency "rake-compiler"
  spec.add_development_dependency "rspec"
end
