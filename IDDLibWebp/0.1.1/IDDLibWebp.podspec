#
# Be sure to run `pod lib lint IDDLibWebp.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IDDLibWebp'
  s.version          = '0.1.1'
  s.summary          = 'A short description of IDDLibWebp.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://git.comjia.com:8888/sunbinhua/IDDLibWebp'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sunbinhua' => 'sunbinhua@julive.com' }
  s.source           = { :git => 'git@git.comjia.com:sunbinhua/IDDLibWebp.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  
  s.compiler_flags   = '-D_THREAD_SAFE'
  s.requires_arc     = false
  
  s.pod_target_xcconfig = {
    "USER_HEADER_SEARCH_PATHS": "$(inherited) ${PODS_ROOT}/IDDLibWebp/ ${PODS_TARGET_SRCROOT}/"
  }
  
  s.default_subspecs = [
    "webp",
    "demux",
    "mux"
  ]
  s.prepare_command = "sed -i.bak 's/<inttypes.h>/<stdint.h>/g' 'IDDLibWebp/Classes/src/webp/types.h'"
  
  s.subspec 'webp' do |ss|
      ss.source_files = [
        "IDDLibWebp/Classes/src/webp/decode.h",
        "IDDLibWebp/Classes/src/webp/encode.h",
        "IDDLibWebp/Classes/src/webp/types.h",
        "IDDLibWebp/Classes/src/webp/mux_types.h",
        "IDDLibWebp/Classes/src/webp/format_constants.h",
        "IDDLibWebp/Classes/src/utils/*.{h,c}",
        "IDDLibWebp/Classes/src/dsp/*.{h,c}",
        "IDDLibWebp/Classes/src/dec/*.{h,c}",
        "IDDLibWebp/Classes/src/enc/*.{h,c}"
      ]
      ss.public_header_files = [
        "IDDLibWebp/Classes/src/webp/decode.h",
        "IDDLibWebp/Classes/src/webp/encode.h",
        "IDDLibWebp/Classes/src/webp/types.h",
        "IDDLibWebp/Classes/src/webp/mux_types.h",
        "IDDLibWebp/Classes/src/webp/format_constants.h"
      ]
  end
  
  s.subspec 'demux' do |ss|
      ss.source_files = [
        "IDDLibWebp/Classes/src/demux/*.{h,c}",
        "IDDLibWebp/Classes/src/webp/demux.h"
      ]
      ss.public_header_files = "IDDLibWebp/Classes/src/webp/demux.h"
      ss.dependency 'IDDLibWebp/webp'
  end
  
  s.subspec 'mux' do |ss|
      ss.source_files = [
        "IDDLibWebp/Classes/src/mux/*.{h,c}",
        "IDDLibWebp/Classes/src/webp/mux.h"
      ]
      ss.public_header_files = "IDDLibWebp/Classes/src/webp/mux.h"
      ss.dependency 'IDDLibWebp/demux'
  end
end
