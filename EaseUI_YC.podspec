Pod::Spec.new do |spec|
  spec.name         = 'EaseUI_YC'
  spec.version      = '3.5.3'
  spec.license       = { :type => 'Copyright', :text => 'EaseMob Inc. 2017' }
  spec.summary      = 'EaseMob UI Kit'
  spec.homepage     = 'https://github.com/yaochi330/easeui-ios-hyphenate-cocoapods'
  spec.author       = {'EaseMob Inc.' => 'admin@easemob.com'}
  spec.source       =  {:git => 'https://github.com/yaochi330/easeui-ios-hyphenate-cocoapods.git', :tag => spec.version.to_s }
  spec.source_files = 'EaseUI/**/*.{h,m,mm}'
  spec.public_header_files = '**/*.{h}'
  spec.private_header_files = ['EaseUI/EMUIKit/3rdparty/DeviceHelper/VoiceConvert/amrwapper/wav.h','EaseUI/EMUIKit/3rdparty/DeviceHelper/VoiceConvert/amrwapper/amrFileCodec.h','EaseUI/EMUIKit/3rdparty/DeviceHelper/VoiceConvert/opencore-amrnb/*.h','EaseUI/EMUIKit/3rdparty/DeviceHelper/VoiceConvert/opencore-amrwb/*.h']
  spec.prefix_header_contents = '#import <UIKit/UIKit.h>'
  spec.platform     = :ios, '8.0'
  spec.vendored_libraries = ['EaseUI/EMUIKit/3rdparty/DeviceHelper/VoiceConvert/opencore-amrnb/libopencore-amrnb.a','EaseUI/EMUIKit/3rdparty/DeviceHelper/VoiceConvert/opencore-amrwb/libopencore-amrwb.a']
  spec.requires_arc = true
  spec.frameworks = 'Foundation', 'UIKit'
  spec.libraries    = 'stdc++'
  spec.resource     = 'EaseUI/resources/EaseUIResource.bundle'
  spec.xcconfig     = {'OTHER_LDFLAGS' => '-ObjC'}
  spec.dependency 'MWPhotoBrowser_YC'
  spec.dependency 'MJRefresh', '~> 3.1.0'
  spec.dependency 'Hyphenate', '~> 3.5.2'
end
