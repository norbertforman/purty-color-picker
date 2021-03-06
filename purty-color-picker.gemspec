# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'purty/color/picker/version'

Gem::Specification.new do |spec|
  spec.name          = "purty-color-picker"
  spec.version       = Purty::Color::Picker::VERSION
  spec.authors       = ["Norbert Forman"]
  spec.email         = ["norbert.forman@gmail.com"]

  spec.summary       = %q{This gem embeddes the Purty Color Picker in the Rails asset pipeline.}
  spec.description   = %q{A super lightweight visual HSL, RGB and hex color picker with a responsive, touch-friendly and customizable UI.}
  spec.homepage      = "https://github.com/norbertforman/purty-color-picker"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
