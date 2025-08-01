Pod::Spec.new do |s|
  s.name             = 'AMRAdapterDTExchange'
  s.version          = '8.3.8.0'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
														Copyright 2016
														Admost Mediation Limited. 
														LICENSE
														}
  s.homepage         = 'http://www.admost.com/'
  s.author           = { 'Admost Mediation Limited' => 'amr@admost.com' }
  s.summary          = 'DTExchange adapter for AMR SDK.'
  s.description      = 'AMR DTExchange adapter allows publishers to mediate DTExchange ads in AMR SDK.'

  s.source           = { :git => 'https://github.com/admost/AMR-IOS-ADAPTER-DTEXCHANGE.git',
 								 :tag => s.version.to_s
 								}
  s.documentation_url = 'https://admost.github.io/amrios/'
  s.platform 			= :ios
  s.ios.deployment_target = '13.0'
  s.swift_versions = ['5']
  s.vendored_frameworks = 'AMRAdapterDTExchange/Libs/AMRAdapterFyber.xcframework'
  s.pod_target_xcconfig = { 
    'OTHER_LDFLAGS' => '-ObjC -lc++',
    "VALID_ARCHS": "arm64 armv7 x86_64",
    'VALID_ARCHS[sdk=iphoneos*]' => 'armv7 arm64',
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64 arm64'
  }
  s.dependency 'AMRSDK', '~> 1.5.55'
  s.dependency 'Fyber_Marketplace_SDK', '8.3.8'
end
