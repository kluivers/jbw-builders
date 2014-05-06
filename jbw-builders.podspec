Pod::Spec.new do |s|
  s.name         = "jbw-builders"
  s.version      = "0.0.1"
  s.summary      = "Builder categories for some foundation classes"
  s.homepage     = "https://github.com/kluivers/jbw-builders"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = "Joris Kluivers"
  s.social_media_url   = "http://twitter.com/kluivers"
  s.ios.deployment_target = "7.0"
  s.osx.deployment_target = "10.9"
  s.source       = { :git => "https://github.com/kluivers/jbw-builders.git", :tag => "0.0.1" }
  s.source_files  = "**/*.{h,m}"
  s.exclude_files = ["Builders/Tests", "Builders/Builder Tests"]
  s.requires_arc = true
end
