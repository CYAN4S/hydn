# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "hydn"
  spec.version       = "0.0.1"
  spec.authors       = ["CYAN4S", "LeeSangBeom", "Choi youngmin"]
  spec.email         = ["me@cyan4s.com"]

  spec.summary       = "Ultimate Jekyll Theme for Blogging."
  spec.homepage      = "https://github.com/CYAN4S/hydn"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }
  
  spec.add_runtime_dependency "jekyll", ">= 3.8"
  spec.add_runtime_dependency "jekyll-seo-tag", ">= 2.7"
  spec.add_runtime_dependency "jekyll-sitemap", ">= 1.4"
  spec.add_runtime_dependency "jekyll-gist", ">= 1.5"
  spec.add_runtime_dependency "jekyll-paginate", ">= 1.1"
end