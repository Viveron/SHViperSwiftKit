#
# Be sure to run `pod lib lint SHViperSwiftKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'SHViperSwiftKit'
    s.version          = '0.1.0'
    s.summary          = 'VIPER commonly used and helpful modules parts.'
    
    s.description      = <<-DESC
    VIPER commonly used and helpful modules parts:
    - ViperModuleTransitionHandler
    DESC
    
    s.homepage         = 'https://github.com/Viveron/SHViperSwiftKit'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Victor Shabanov' => 'shabanov.dev.git@gmail.com' }
    s.source           = { :git => 'https://github.com/Viveron/SHViperSwiftKit.git', :tag => s.version.to_s }
    
    s.ios.deployment_target = '8.0'
    
    s.source_files = 'SHViperSwiftKit/Classes/**/*'
    
    # s.resource_bundles = {
    #   'SHViperSwiftKit' => ['SHViperSwiftKit/Assets/*.png']
    # }
    
    # s.public_header_files = 'Pod/Classes/**/*.h'
    s.frameworks = 'UIKit'
    # s.dependency 'AFNetworking', '~> 2.3'
end
