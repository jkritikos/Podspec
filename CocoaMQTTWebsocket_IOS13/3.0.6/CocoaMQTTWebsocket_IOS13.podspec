Pod::Spec.new do |s|
  s.name        = "CocoaMQTTWebsocket_IOS13"
  s.version     = "3.0.6"
  s.summary     = "MQTT v3.1.1 client library for iOS and OS X written with Swift 5"
  s.homepage    = "https://github.com/emqx/CocoaMQTT"
  s.license     = { :type => "MIT" }
  s.authors     = { "Feng Lee" => "feng@emqtt.io", "CrazyWisdom" => "zh.whong@gmail.com", "Alex Yu" => "alexyu.dc@gmail.com", "Leeway" => "leeway1208@gmail.com"  }

  s.swift_version = "5.0"
  s.requires_arc = true
  s.osx.deployment_target = "10.12"
  s.ios.deployment_target = "13.0"
  s.tvos.deployment_target = "10.0"
  # s.watchos.deployment_target = "2.0"
  s.source   = { :git => "https://github.com/jkritikos/CocoaMQTT_Fixed.git", :tag => s.version }
  #s.default_subspec = 'Core'
  
  s.source_files = "Source/*.swift"
  s.dependency "Starscream", "4.0.8"

end
