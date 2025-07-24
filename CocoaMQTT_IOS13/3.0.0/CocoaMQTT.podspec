Pod::Spec.new do |s|
  s.name        = "CocoaMQTT_IOS13"
  s.version     = "3.0.1"
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
  s.default_subspec = 'Core'
  
  s.subspec 'Core' do |ss|
    ss.dependency "MqttCocoaAsyncSocket_IOS13"
    ss.source_files = "Source/*.swift"
    ss.exclude_files = "Source/CocoaMQTTWebSocket.swift"
  end
  
  s.subspec 'WebSockets' do |ss|
    ss.dependency "CocoaMQTT_IOS13/Core"
    ss.dependency "Starscream", "4.0.4"
    ss.source_files = "Source/CocoaMQTTWebSocket.swift"
  end
end
