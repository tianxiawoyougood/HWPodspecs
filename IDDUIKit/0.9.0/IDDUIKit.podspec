#
# Be sure to run `pod lib lint IDDUIKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IDDUIKit'
  s.version          = '0.9.0'
  s.summary          = 'IDDUIKit是自定义UI库'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/tianxiawoyougood/IDDUIKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'tianxiayouwogood' => 'tianxiawoyougood' }
  s.source           = { :git => 'https://github.com/tianxiawoyougood/IDDUIKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'
    
  s.subspec 'Core' do |ss|
    ss.source_files = 'IDDUIKit/Classes/Core/*.{h,m}'
  end
  
  s.subspec 'IDDDevice' do |ss|
    ss.source_files = 'IDDUIKit/Classes/IDDDevice/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
  end
  
  s.subspec 'IDDView' do |ss|
    ss.source_files = 'IDDUIKit/Classes/IDDView/*.{h,m}'
    ss.dependency 'IDDUIKit/IDDColor'
    ss.dependency 'ReactiveObjC', '= 3.1.1'
  end
 
  s.subspec 'IDDButton' do |ss|
    ss.source_files = 'IDDUIKit/Classes/IDDButton/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
  end
  
  s.subspec 'IDDStringSize' do |ss|
    ss.source_files = 'IDDUIKit/Classes/IDDStringSize/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
  end
  
  s.subspec 'IDDColor' do |ss|
    ss.source_files = 'IDDUIKit/Classes/IDDColor/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/IDDDevice'
  end
  
  s.subspec 'SDWebImageManager' do |ss|
    ss.source_files = 'IDDUIKit/Classes/SDWebImageManager/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'SDWebImage', '>= 5.9.0'
  end
  
  s.subspec 'IDDImage' do |ss|
    ss.source_files = 'IDDUIKit/Classes/IDDImage/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/SDWebImageManager'
    ss.dependency 'SDWebImage', '>= 5.9.0'
  end
  
  s.subspec 'IDDWindow' do |ss|
    ss.source_files = 'IDDUIKit/Classes/IDDWindow/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
  end
  
  s.subspec 'IDDTableViewCell' do |ss|
    ss.source_files = 'IDDUIKit/Classes/IDDTableViewCell/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/IDDLine'
    ss.dependency 'IDDUIKit/IDDColor'
  end
  
  s.subspec 'IDDLine' do |ss|
    ss.source_files = 'IDDUIKit/Classes/IDDLine/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
  end
  
  s.subspec 'IDDLayout' do |ss|
    ss.source_files = 'IDDUIKit/Classes/IDDLayout/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/IDDView'
  end
  
  s.subspec 'IDDTabbar' do |ss|
    ss.source_files = 'IDDUIKit/Classes/IDDTabbar/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/IDDView'
    ss.dependency 'IDDUIKit/IDDColor'
    ss.dependency 'IDDUIKit/IDDImage'
    ss.dependency 'IDDUIKit/IDDLabel'
    ss.dependency 'SDWebImage', '>= 5.9.0'
    ss.dependency 'lottie-ios', '~> 2.5.2'
  end
  
  s.subspec 'IDDViewController' do |ss|
    ss.source_files = 'IDDUIKit/Classes/IDDViewController/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/UIBarButtonItem'
    ss.dependency 'IDDUIKit/IDDImage'
    ss.dependency 'IDDUIKit/IDDStringSize'
  end

  s.subspec 'IDDNavigation' do |ss|
    ss.source_files = 'IDDUIKit/Classes/IDDNavigation/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/IDDViewController'
  end

  s.subspec 'IDDPopKit' do |ss|
    ss.source_files = 'IDDUIKit/Classes/IDDPopKit/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/IDDView'
    ss.dependency 'IDDUIKit/IDDWindow'
  end
   
  s.subspec 'IDDTextField' do |ss|
    ss.source_files = 'IDDUIKit/Classes/IDDTextField/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/IDDView'
    ss.dependency 'IDDUIKit/IDDImage'
    ss.dependency 'IDDUIKit/IDDStringSize'
    ss.dependency 'IDDUIKit/IDDTableViewCell'
  end

  s.subspec 'IDDToast' do |ss|
    ss.source_files = 'IDDUIKit/Classes/IDDToast/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/IDDView'
    ss.dependency 'IDDUIKit/IDDWindow'
    ss.dependency 'IDDUIKit/IDDColor'
    ss.dependency 'IDDUIKit/IDDKeyboard'
  end

  s.subspec 'IDDBadgeView' do |ss|
    ss.source_files = 'IDDUIKit/Classes/IDDBadgeView/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
  end

  s.subspec 'IDDCheckBox' do |ss|
    ss.source_files = 'IDDUIKit/Classes/IDDCheckBox/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
  end
  
  s.subspec 'IDDCornerRadius' do |ss|
    ss.source_files = 'IDDUIKit/Classes/IDDCornerRadius/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/IDDLayout'
  end

  s.subspec 'IDDKeyboard' do |ss|
    ss.source_files = 'IDDUIKit/Classes/IDDKeyboard/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
  end

  s.subspec 'IDDLabel' do |ss|
    ss.source_files = 'IDDUIKit/Classes/IDDLabel/*.{h,m}'
    ss.dependency 'TTTAttributedLabel', '= 1.13.4'
    ss.dependency 'IDDUIKit/IDDView'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/IDDStringSize'
  end

  s.subspec 'IDDNavigationBar' do |ss|
    ss.source_files = 'IDDUIKit/Classes/IDDNavigationBar/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/IDDView'
    ss.dependency 'IDDUIKit/IDDColor'
    ss.dependency 'IDDUIKit/IDDImage'
  end

  s.subspec 'IDDPageControl' do |ss|
    ss.source_files = 'IDDUIKit/Classes/IDDPageControl/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
  end

  s.subspec 'IDDPhotoBrowser' do |ss|
    ss.source_files = 'IDDUIKit/Classes/IDDPhotoBrowser/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/IDDView'
    ss.dependency 'IDDUIKit/IDDPageControl'
    ss.dependency 'MBProgressHUD', '~> 0.9'
    ss.dependency 'SDWebImage', '>= 5.9.0'
  end
  
  s.subspec 'IDDStatusBar' do |ss|
    ss.source_files = 'IDDUIKit/Classes/IDDStatusBar/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/IDDView'
  end
  
  s.subspec 'UIBarButtonItem' do |ss|
    ss.source_files = 'IDDUIKit/Classes/UIBarButtonItem/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/IDDView'
  end

  s.subspec 'IDDHtmlProgress' do |ss|
    ss.source_files = 'IDDUIKit/Classes/IDDHtmlProgress/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
  end
  
  s.subspec 'IDDApplication' do |ss|
    ss.source_files = 'IDDUIKit/Classes/IDDApplication/*.{h,m}'
    ss.dependency 'IDDUIKit/Core'
    ss.dependency 'IDDUIKit/IDDWindow'
  end
  
  s.resource_bundles = {
   'IDDUIKit' => ['IDDUIKit/Assets/*']
  }

   s.public_header_files = 'IDDUIKit/Classes/*.h'
   s.prefix_header_contents = '#import <IDDUIKit/IDDUIKit.h>'
   s.frameworks = 'UIKit'
end
