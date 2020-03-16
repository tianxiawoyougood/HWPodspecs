#
# Be sure to run `pod lib lint IDDWidget.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IDDWidget'
  s.version          = '0.2.8'
  s.summary          = '常用业务控件汇总.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://git.comjia.com:8888/sunbinhua/IDDWidget.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wujie' => '452048961@qq.com' }
  s.source           = { :git => 'git@git.comjia.com:sunbinhua/IDDWidget.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = [
  'IDDWidget/Classes/*.{h,m}',
  'IDDWidget/Classes/IDDAdjustScrollViewInsets/*.{h,m}',
  'IDDWidget/Classes/IDDLogoImageView/*.{h,m}',
  'IDDWidget/Classes/IDDRestOfTime/*.{h,m}',
  'IDDWidget/Classes/IDDTextHandleTool/*.{h,m}',
  'IDDWidget/Classes/IDDUITextView/*.{h,m}',
  'IDDWidget/Classes/IDDFont/*.{h,m}',
  'IDDWidget/Classes/IDDActionSheet/*.{h,m}',
  'IDDWidget/Classes/IDDUIHelper/*.{h,m}',
  'IDDWidget/Classes/IDDAdjustedAligmerntLabel/*.{h,m}',
  'IDDWidget/Classes/IDDTurnPage/*.{h,m}',
  'IDDWidget/Classes/IDDTableView/*.{h,m}',
  'IDDWidget/Classes/IDDPhotoManager/*.{h,m}',
  'IDDWidget/Classes/IDDMutiliStyleTagsView/*.{h,m}',
  'IDDWidget/Classes/IDDLoading/*.{h,m}',
  'IDDWidget/Classes/IDDFlipView/*.{h,m}',
  'IDDWidget/Classes/IDDCoreText/*.{h,m}',
  'IDDWidget/Classes/IDDBadgeManager/*.{h,m}',
  'IDDWidget/Classes/UIApplication/*.{h,m}',
  'IDDWidget/Classes/IDDLikeAnimation/*.{h,m}',
  'IDDWidget/Classes/IDDLineChart/*.{h,m}',
  'IDDWidget/Classes/UIView/*.{h,m}',
  'IDDWidget/Classes/NSDate/*.{h,m}',
  'IDDWidget/Classes/CLLocation/*.{h,m}',
  'IDDWidget/Classes/IDDDefine/*.{h,m}',
  'IDDWidget/Classes/IDDFilter/*.{h,m}',
  'IDDWidget/Classes/Tabbar/*.{h,m}',
  'IDDWidget/Classes/TableView/*.{h,m}',
  'IDDWidget/Classes/IDDRangeSlider/*.{h,m}',
  'IDDWidget/Classes/IDDRatingControl/*.{h,m}',
  'IDDWidget/Classes/IDDRefreshControl/*.{h,m}',
  'IDDWidget/Classes/IDDRoundImageView/*.{h,m}',
  'IDDWidget/Classes/IDDSheetView/*.{h,m}',
  'IDDWidget/Classes/Navigation/*.{h,m}',
  'IDDWidget/Classes/Picker/*.{h,m}',
  'IDDWidget/Classes/IDDImageResize/*.{h,m}',
  'IDDWidget/Classes/IDDButton/*.{h,m}',
  'IDDWidget/Classes/IDDLabel/*.{h,m}',
  'IDDWidget/Classes/IDDImageContainer/*.{h,m}',
  'IDDWidget/Classes/IDDNSObjectHooker/*.{h,m}'
  ]
  
#   s.resource_bundles = {
#     'IDDWidget' => ['IDDWidget/Assets/*.png']
#   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'IDDKit', '>= 0.6.39'
  s.dependency 'Masonry', '= 1.0.1'
  s.dependency 'IDDAlertView', '= 0.1.5'
  s.dependency 'SDWebImage', '= 4.4.3'
  s.dependency 'SDWebImage/GIF', '= 4.4.3'
  s.dependency 'MarqueeLabel', '= 3.1.6'
  s.dependency 'IDDRoundedCorner', '= 0.1.9'
  s.dependency 'IDDCyclePagerView', '= 0.1.2'
  s.dependency 'FlickerNumber', '= 1.1'
  s.dependency 'DTCoreText', '= 1.6.21'
  s.dependency 'IDDCandyView', '= 0.1.5'
  s.dependency 'IDDImageTextView', '= 0.1.0'
  s.dependency 'lottie-ios', '~> 2.5.2'
end
