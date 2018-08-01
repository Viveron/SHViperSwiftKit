Pod::Spec.new do |s|
    s.name             = 'SHViperSwiftKit'
    s.version          = '0.1.1'
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
    s.frameworks = 'UIKit'
    
    s.subspec 'ViperTransitionHandler' do |ts|
        ts.source_files = 'SHViperSwiftKit/Classes/ViperTransitionHandler/**/*'
        ts.header_mappings_dir = 'SHViperSwiftKit/Classes/ViperTransitionHandler'
    end
end
