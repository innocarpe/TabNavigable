Pod::Spec.new do |s|
  s.name             = 'TabNavigatable'
  s.version          = '1.0.0'
  s.summary          = 'A useful protocol and its extension when you make custom TabBarViewController.'
  s.homepage         = 'https://github.com/kwosu87/TabNavigatable'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Wooseong Kim' => 'kwosu87@me.com' }
  s.source           = { :git => 'https://github.com/kwosu87/TabNavigatable.git', 
  						 :tag => s.version.to_s }
  s.source_files = "Sources/*.swift"
  s.frameworks = "UIKit"

  s.ios.deployment_target = '9.0'
end
