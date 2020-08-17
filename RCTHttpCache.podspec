require 'json'
pjson = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|

  s.name            = "RCTHttpCache"
  s.version         = pjson["version"]
  s.homepage        = "https://github.com/orzhtml/react-native-orzhtml-httpcache"
  s.summary         = pjson["description"]
  s.license         = pjson["license"]
  s.author          = { "orzhtml" => "https://github.com/orzhtml/" }

  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.2'

  s.source          = { :git => "https://github.com/orzhtml/react-native-orzhtml-httpcache.git", :tag => "master" }
  s.source_files  = "ios/RCTHttpCache/*.{h,m}"

  s.dependency 'React'
end
