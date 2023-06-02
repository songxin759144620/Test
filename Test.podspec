#
# Be sure to run `pod lib lint XYZKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|

  s.name             = 'Test'
  s.version          = '1.0.0'
  s.summary          = 'TestFrameWork.'

  s.homepage         = 'https://www.baidu.com'
  s.description      = <<-DESC
                       TODO: Add long description of the pod here.
                       DESC

  s.author           = { 'ss' => 'songxin@021.com' }
  s.source           = { :path => './'}


  s.ios.deployment_target = '9.0'
  s.requires_arc = true
  s.swift_versions = ['5.0']

  s.frameworks = 'UIKit', 'Foundation', 'SystemConfiguration', 'CoreGraphics'
  s.libraries  = 'c++', 'z', 'sqlite3', 'xml2', 'resolv'
  
  s.pod_target_xcconfig  =  {'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 'OTHER_LDFLAGS': ["-lObjC"],}


  # 替代 pod 'AnyThinkiOS','6.1.71'， 移除了其bundle
  # KSAdSDK ’3.3.40‘  修改了里面的bundle图片名称
  s.vendored_frameworks = 'adSDKs/AnyThinkiOS/*.framework', 'adSDKs/AnyThinkTTAdapter/*.framework', 'adSDKs/KSAdSDK/*.xcframework'
  
  # 穿山甲pod依赖层级太深了 这里不修改了
  s.dependency 'Ads-CN', "5.1.1.0"
  # 广点通没有资源 直接依赖
  s.dependency 'GDTMobSDK', '4.14.12'
  
  # s.resources = "AnyThinkiOS/AnyThinkSDK.bundle"
  # "vendored_frameworks": "AnyThinkiOS/AnyThink{Banner,Splash,SDK,RewardedVideo,Interstitial,Native}.framework",
  # s.vendored_libraries = 'sdks/**/*.a'
  # s.source_files = 'sdks/shumeiSDK_306/*.{h,m}', 'sdks/smcaptcha-ios-1.1.6/*.{h,m}'
  # s.weak_framework = 'AdServices'  c
end
