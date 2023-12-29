#
# Be sure to run `pod lib lint IDDWidget.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IDDWidget'
  s.version          = '1.3.0'
  s.summary          = '常用业务控件汇总.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/tianxiawoyougood/IDDWidget'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sean' => 'sean@email.com' }
  s.source           = { :git => 'git@github.com:tianxiawoyougood/IDDWidget.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'
  
  s.subspec 'IDDDefine' do |ss|
    ss.source_files = 'IDDWidget/Classes/IDDDefine/*.h'
  end
  
  s.subspec 'IDDAdjustScrollViewInsets' do |ss|
    ss.source_files = 'IDDWidget/Classes/IDDAdjustScrollViewInsets/*.{h,m}'
  end

  s.subspec 'IDDLogoImageView' do |ss|
    ss.source_files = 'IDDWidget/Classes/IDDLogoImageView/*.{h,m}'
    ss.dependency 'Masonry', '= 1.0.1'
    ss.dependency 'SDWebImage', '>= 5.9.0'
    ss.dependency 'IDDFoundation'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/IDDView'
  end

  s.subspec 'IDDRestOfTime' do |ss|
    ss.source_files = 'IDDWidget/Classes/IDDRestOfTime/*.{h,m}'
    ss.dependency 'ios-ntp'
  end

  s.subspec 'IDDTextHandleTool' do |ss|
    ss.source_files = 'IDDWidget/Classes/IDDTextHandleTool/*.{h,m}'
    ss.dependency 'IDDUIKit/IDDStringSize'
    ss.dependency 'IDDUIKit/IDDLabel'
    ss.dependency 'IDDFoundation'
  end

  s.subspec 'IDDUITextView' do |ss|
    ss.source_files = 'IDDWidget/Classes/IDDUITextView/*.{h,m}'
  end

  s.subspec 'IDDFont' do |ss|
    ss.source_files = 'IDDWidget/Classes/IDDFont/*.{h,m}'
  end

  s.subspec 'IDDActionSheet' do |ss|
    ss.source_files = 'IDDWidget/Classes/IDDActionSheet/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/IDDApplication'
    ss.dependency 'IDDUIKit/IDDView'
    ss.dependency 'IDDFoundation'
  end

  s.subspec 'IDDAdjustedAligmerntLabel' do |ss|
    ss.source_files = 'IDDWidget/Classes/IDDAdjustedAligmerntLabel/*.{h,m}'
  end

  s.subspec 'IDDTurnPage' do |ss|
    ss.source_files = 'IDDWidget/Classes/IDDTurnPage/*.{h,m}'
    ss.dependency 'IDDUIKit/IDDViewController'
    ss.dependency 'IDDUIKit/IDDTableViewCell'
    ss.dependency 'IDDWidget/IDDAdjustScrollViewInsets'
  end

  s.subspec 'IDDTableView' do |ss|
    ss.source_files = 'IDDWidget/Classes/IDDTableView/*.{h,m}'
  end

  s.subspec 'IDDPhotoManager' do |ss|
    ss.source_files = 'IDDWidget/Classes/IDDPhotoManager/*.{h,m}'
    ss.dependency 'IDDUIKit/IDDToast'
    ss.dependency 'IDDAlertView'
  end

  s.subspec 'IDDMutiliStyleTagsView' do |ss|
    ss.source_files = 'IDDWidget/Classes/IDDMutiliStyleTagsView/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/IDDView'
  end

  s.subspec 'IDDLoading' do |ss|
    ss.dependency 'lottie-ios', '~> 2.5.2'
    ss.source_files = 'IDDWidget/Classes/IDDLoading/*.{h,m}'
    ss.dependency 'IDDUIKit/IDDView'
    ss.dependency 'IDDUIKit/IDDStringSize'
    ss.dependency 'IDDUIKit/IDDColor'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/IDDLabel'
  end

  s.subspec 'IDDFlipView' do |ss|
    ss.source_files = 'IDDWidget/Classes/IDDFlipView/*.{h,m}'
    ss.dependency 'IDDUIKit/IDDView'
    ss.dependency 'IDDUIKit/IDDColor'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/IDDLabel'
    ss.dependency 'IDDFoundation'
  end

  s.subspec 'IDDCoreText' do |ss|
    ss.source_files = 'IDDWidget/Classes/IDDCoreText/*.{h,m}'
  end

  s.subspec 'IDDBadgeManager' do |ss|
    ss.source_files = 'IDDWidget/Classes/IDDBadgeManager/*.{h,m}'
    ss.dependency 'IDDUIKit/IDDView'
    ss.dependency 'IDDUIKit/IDDColor'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/IDDLabel'
    ss.dependency 'IDDUIKit/IDDStringSize'
    ss.dependency 'IDDUIKit/IDDImage'
  end

  s.subspec 'IDDLikeAnimation' do |ss|
    ss.source_files = 'IDDWidget/Classes/IDDLikeAnimation/*.{h,m}'
  end

  s.subspec 'UIView' do |ss|
    ss.source_files = 'IDDWidget/Classes/UIView/*.{h,m}'
    ss.dependency 'IDDFoundation'
  end

  s.subspec 'NSDate' do |ss|
    ss.source_files = 'IDDWidget/Classes/NSDate/*.{h,m}'
  end

  s.subspec 'CLLocation' do |ss|
    ss.source_files = 'IDDWidget/Classes/CLLocation/*.{h,m}'
  end

  s.subspec 'IDDFilter' do |ss|
    ss.source_files = 'IDDWidget/Classes/IDDFilter/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/IDDView'
    ss.dependency 'IDDFoundation'
  end

  s.subspec 'UILabel' do |ss|
    ss.source_files = 'IDDWidget/Classes/UILabel/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/IDDView'
  end

  s.subspec 'Tabbar' do |ss|
    ss.source_files = 'IDDWidget/Classes/Tabbar/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/IDDColor'
    ss.dependency 'IDDUIKit/IDDImage'
    ss.dependency 'IDDUIKit/IDDView'
  end

  s.subspec 'TableView' do |ss|
    ss.source_files = 'IDDWidget/Classes/TableView/*.{h,m}'
  end

  s.subspec 'IDDRangeSlider' do |ss|
    ss.source_files = 'IDDWidget/Classes/IDDRangeSlider/*.{h,m}'
    ss.dependency 'IDDFoundation'
  end

  s.subspec 'IDDRatingControl' do |ss|
    ss.source_files = 'IDDWidget/Classes/IDDRatingControl/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/IDDView'
    ss.dependency 'IDDUIKit/IDDApplication'
  end

  s.subspec 'IDDRefreshControl' do |ss|
    ss.source_files = 'IDDWidget/Classes/IDDRefreshControl/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/IDDView'
    ss.dependency 'IDDUIKit/IDDStringSize'
    ss.dependency 'IDDUIKit/IDDImage'
    ss.dependency 'IDDFoundation'
    ss.dependency 'SDWebImage', '>= 5.9.0'
  end

  s.subspec 'IDDImageResize' do |ss|
    ss.source_files = 'IDDWidget/Classes/IDDImageResize/*.{h,m}'
    ss.dependency 'IDDFoundation'
  end

  s.subspec 'IDDRoundImageView' do |ss|
    ss.source_files = 'IDDWidget/Classes/IDDRoundImageView/*.{h,m}'
    ss.dependency 'IDDWidget/IDDImageResize'
    ss.dependency 'SDWebImage', '>= 5.9.0'
    ss.dependency 'IDDRoundedCorner'
    ss.dependency 'IDDUIKit/Core'
  end

  s.subspec 'UIButton' do |ss|
    ss.source_files = 'IDDWidget/Classes/UIButton/*.{h,m}'
    ss.dependency 'IDDRoundedCorner'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/IDDImage'
  end

  s.subspec 'IDDSheetView' do |ss|
    ss.source_files = 'IDDWidget/Classes/IDDSheetView/*.{h,m}'
    ss.dependency 'IDDRoundedCorner'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/IDDView'
    ss.dependency 'IDDUIKit/IDDApplication'
    ss.dependency 'IDDUIKit/IDDLabel'
    ss.dependency 'IDDFoundation'
  end

  s.subspec 'IDDLineChart' do |ss|
    ss.source_files = 'IDDWidget/Classes/IDDLineChart/*.{h,m}'
    ss.dependency 'IDDRoundedCorner'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/IDDView'
    ss.dependency 'IDDUIKit/IDDLabel'
    ss.dependency 'IDDUIKit/IDDColor'
    ss.dependency 'IDDUIKit/IDDStringSize'
  end
   
  s.subspec 'IDDProgressChart' do |ss|
    ss.source_files = 'IDDWidget/Classes/IDDProgressChart/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/IDDLabel'
    ss.dependency 'IDDUIKit/IDDView'
  end
  
  s.subspec 'Navigation' do |ss|
    ss.source_files = 'IDDWidget/Classes/Navigation/*.{h,m}'
    ss.dependency 'IDDFoundation'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/IDDNavigation'
  end

  s.subspec 'Picker' do |ss|
    ss.source_files = 'IDDWidget/Classes/Picker/*.{h,m}'
    ss.dependency 'ReactiveObjC'
    ss.dependency 'IDDFoundation'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/IDDView'
    ss.dependency 'IDDUIKit/IDDApplication'
  end

  s.subspec 'IDDNSObjectHooker' do |ss|
    ss.source_files = 'IDDWidget/Classes/IDDNSObjectHooker/*.{h,m}'
    ss.dependency 'IDDFoundation'
  end

  s.subspec 'IDDPraiseButton' do |ss|
    ss.source_files = 'IDDWidget/Classes/IDDPraiseButton/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/IDDImage'
    ss.dependency 'IDDUIKit/IDDView'
  end

  s.subspec 'IDDVersion' do |ss|
    ss.source_files = 'IDDWidget/Classes/IDDVersion/*.{h,m}'
  end

  s.subspec 'IDDDrawerPopControl' do |ss|
    ss.source_files = 'IDDWidget/Classes/IDDDrawerPopControl/*.{h,m}'
    ss.dependency 'IDDRoundedCorner'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/IDDLabel'
    ss.dependency 'IDDUIKit/IDDViewController'
    ss.dependency 'Masonry', '= 1.0.1'
  end
  
end
