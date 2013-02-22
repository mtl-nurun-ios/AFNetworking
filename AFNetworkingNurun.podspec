Pod::Spec.new do |s|
  s.name     = 'AFNetworkingNurun'
  s.version  = '1.2.0'
  s.license  = 'MIT'
  s.summary  = 'A delightful iOS and OS X networking framework.'
  s.authors  = { 'Mattt Thompson' => 'm@mattt.me', 'Scott Raymond' => 'sco@gowalla.com' }
  s.source   = { :git => 'https://github.com/mtl-nurun-ios/AFNetworking.git', :commit => '538127a8406b405622041aa68a0c6f30358a977d' }
  s.source_files = 'AFNetworking'
  s.requires_arc = true

  s.ios.deployment_target = '5.0'
  s.ios.frameworks = 'MobileCoreServices', 'SystemConfiguration'

  s.osx.deployment_target = '10.7'
  s.osx.frameworks = 'CoreServices', 'SystemConfiguration'

  s.prefix_header_contents = <<-EOS
#import <Availability.h>
#if __IPHONE_OS_VERSION_MIN_REQUIRED
  #import <SystemConfiguration/SystemConfiguration.h>
  #import <MobileCoreServices/MobileCoreServices.h>
#else
  #import <SystemConfiguration/SystemConfiguration.h>
  #import <CoreServices/CoreServices.h>
#endif
EOS
end
