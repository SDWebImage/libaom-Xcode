#
# Be sure to run `pod lib lint TestLibrary.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'libaom'
  s.version          = '1.0.0'
  s.summary          = 'AV1 Codec Library.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Codec library for encoding and decoding AV1 video streams
                       DESC

  s.homepage         = 'https://aomedia.googlesource.com/aom/'
  s.license          = { :type => 'BSD' }
  s.author           = { 'Alliance for Open Media' => 'https://aomedia.org' }
  s.source           = { :git => 'https://github.com/dreampiggy/libaom-Xcode.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.7'

  s.source_files = 'include/aom/*.h'
  s.public_header_files = 'include/aom/*.h'
  s.preserve_paths = 'include', 'lib'

  s.ios.vendored_libraries = 'lib/ios/libaom.a'
  s.osx.vendored_libraries = 'lib/mac/libaom.a'
end
