Pod::Spec.new do |s|
  s.name             = 'TabNavigable'
  s.version          = '1.1.0'
  s.summary          = 'A useful protocol and its extension when you make custom TabBarViewController.'
  s.homepage         = 'https://github.com/innocarpe/TabNavigable'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Wooseong Kim' => 'innocarpe@gmail.com' }
  s.source           = { :git => 'https://github.com/innocarpe/TabNavigable.git', 
                         :tag => s.version.to_s }
  s.source_files = "Sources/**/*.swift"
  s.frameworks = "UIKit"

  s.ios.deployment_target = '9.0'
end
