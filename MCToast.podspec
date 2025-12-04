#
# Be sure to run `pod lib lint MCToast.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MCToast'
  s.version          = '0.1.3'
  s.summary          = 'Swift版本的HUD，支持多种自定义方案。使用方便。'
  s.homepage         = 'https://github.com/justyour/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'justyour' => 'c_henbing@163.com' }
 
  s.source           = { :git => 'https://github.com/justyour/MCToast.git', :tag => s.version.to_s }
  s.ios.deployment_target = '13.0'
 
  s.swift_version = '5.0'
  
  s.source_files = 'Sources/Classes/**/*'
  
   s.resource_bundles = {
     'ToastBundle' => ['Sources/Assets/**/*']
   }

  s.dependency 'lottie-ios', '~> 4.5.2'

end
