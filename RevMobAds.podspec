Pod::Spec.new do |s|
  s.name         = "RevMob"
  s.version      = "8.1.0"
  s.summary      = "Official RevMob iOS SDK."
  s.homepage     = "http://sdk.revmob.com"
  s.license      = {
    :type => 'Copyright',
    :text => <<-LICENSE
      Copyright 2014 RevMob. All rights reserved.
      LICENSE
  }
  s.author       = { "RevMob SDK" => "sdk@revmob.com" }
  s.source       = { :git => "https://github.com/gaoyz/revmob.git", :tag => s.version.to_s }
  s.platform     = :ios, '4.3'
  s.preserve_paths = 'RevMobAds.framework'
  s.frameworks = 'SystemConfiguration', 'StoreKit', 'AdSupport', 'RevMobAds', 'MediaPlayer'
  s.weak_frameworks = 'AdSupport', 'StoreKit'
  s.requires_arc = false
  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/RevMob"' }
end