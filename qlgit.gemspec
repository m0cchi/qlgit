# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'qlgit/version'

Gem::Specification.new do |spec|
  spec.name          = "qlgit"
  spec.version       = Qlgit::VERSION
  spec.authors       = ["mocchi"]
  spec.email         = ["boom.boom.planet@gmail.com"]

  spec.summary       = %q{quicklisp with github}
  spec.description   = %q{quicklisp with github}
  spec.homepage      = "https://github.com/mocchit/qlgit"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "cmdparser", "~> 1.1"
  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
