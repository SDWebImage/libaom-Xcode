#
# Be sure to run `pod lib lint TestLibrary.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'libbpg'
  s.version          = '0.9.8'
  s.summary          = 'BPG Image library and utilities'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
BPG (Better Portable Graphics) is a new image format. Its purpose is to replace the JPEG image format when quality or file size is an issue.
                       DESC

  s.homepage         = 'https://bellard.org/bpg/'
  s.license          = { :type => 'LGPL' }
  s.author           = 'Fabrice Bellard'
  s.source           = { :git => 'https://github.com/mirrorer/libbpg.git', :commit => '0e2aadb' }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.6'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.source_files = 'libavcodec/**/*.{h,c,cc}', 'libavutil/**/*.{h,c,cc}', 'libbpg.{h,c}', 'config.h'
  s.public_header_files = 'libbpg.h'
  s.exclude_files = 'libavcodec/*template.c'
  s.preserve_paths = 'libavcodec', 'libavutil'

  # fix #include <inttypes.h> cause 'Include of non-modular header inside framework module error'
  s.prepare_command = <<-CMD
                      sed -i.bak 's/<inttypes.h>/<stdint.h>/g' './libbpg.h'
                      CMD

  s.xcconfig = {
    'HEADER_SEARCH_PATHS' => '$(inherited) ${PODS_ROOT}/libbpg/ ${PODS_TARGET_SRCROOT}/',
    'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) HAVE_AV_CONFIG_H=1 USE_VAR_BIT_DEPTH=1 USE_PRED=1'
  }
end
