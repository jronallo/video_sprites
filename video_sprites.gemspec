# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'video_sprites/version'

Gem::Specification.new do |spec|
  spec.name          = "video_sprites"
  spec.version       = VideoSprites::VERSION
  spec.authors       = ["Jason Ronallo"]
  spec.email         = ["jronallo@gmail.com"]

  spec.summary       = %q{Create video thumbnail sprite sheets}
  spec.description   = %q{Create video thumbnail sprite sheets and WebVTT metadata files for showing thumbnails over video time rail.}
  spec.homepage      = "https://github.com/jronallo/video_sprites"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "thor"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "colorize"
  spec.add_development_dependency "bundler-audit"
end
