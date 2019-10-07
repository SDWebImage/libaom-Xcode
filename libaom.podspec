#
# Be sure to run `pod lib lint TestLibrary.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'libaom'
  s.version          = '1.0.1'
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
  s.source           = { :git => 'https://github.com/SDWebImage/libaom-Xcode.git', :tag => s.version.to_s, :submodules => true }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.7'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.source_files = 'aom/aom/**/*.{h,c}', 'aom/aom_dsp/**/*.{h,c}', 'aom/aom_mem/**/*.{h,c}', 'aom/aom_ports/**/*.{h,c}', 'aom/aom_scale/**/*.{h,c}', 'aom/aom_util/**/*.{h,c}', 'aom/av1/**/*.{h,c}', 'aom/third_party/vector/*.{h,c}', 'aom/third_party/fastfeat/*.{h,c}', 'generate/**/*.{h,c}'
  s.public_header_files = 'aom/aom/*.h'
  s.exclude_files = 'aom/av1/common/x86', 'aom/av1/encoder/x86', 'aom/aom_dsp/x86', 'aom/aom_dsp/mips', 'aom/aom_dsp/arm', 'aom/aom_dsp/simd', 'aom/aom_scale/mips', 'aom/av1/common/arm', 'aom/av1/common/ppc', 'aom/av1/encoder/mips', 'aom/av1/encoder/arm', 'aom/aom_dsp/ssim.{h,c}', 'aom/aom_dsp/buf_ans.{h,c}', 'aom/aom_ports/ppc*.{h,c}', 'aom/aom_ports/arm*.{h,c}', 'aom/av1/decoder/inspection.{h,c}'

  s.pod_target_xcconfig = {
    'HEADER_SEARCH_PATHS' => '$(inherited) ${PODS_ROOT}/libaom/aom ${PODS_TARGET_SRCROOT}/aom ${PODS_ROOT}/libaom/generate ${PODS_TARGET_SRCROOT}/generate',
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
    'WARNING_CFLAGS' => '$(inherited) -Wno-documentation -Wno-conditional-uninitialized -Wno-strict-prototypes -Wno-comma'
  }
  s.preserve_paths = 'aom/aom', 'aom/aom_dsp', 'aom/aom_mem', 'aom/aom_ports', 'aom/aom_scale', 'aom/aom_util', 'aom/av1', 'aom/third_party', 'generate'
end
