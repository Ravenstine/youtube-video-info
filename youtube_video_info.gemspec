lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name        = 'youtube_video_info'
  s.version     = '1.0.0'
  s.date        = '2015-04-30'
  s.summary     = "Get info and download links from YouTube videos."
  s.description = "Get info and download links from YouTube videos."
  s.authors     = ["Ben Titcomb"]
  s.email       = 'benjamin@pixelstreetinc.com'
  s.files       = Dir["lib/**/*"]
  s.homepage    = 'http://github.com/ravenstine/youtube_video_info'
  s.license     = 'Public Domain'

  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]
end