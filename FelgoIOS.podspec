
Pod::Spec.new do |s|


  s.name         = "FelgoIOS"
  s.version      = "3.7.0"
  s.summary      = "Felgo in native iOS projects"

  s.description  = <<-DESC
          Use Felgo, Qt and QML in a native iOS app from Xcode.
                   DESC

  s.homepage     = "https://felgo.com"

  s.license      = "Proprietary"

  s.author       = { "FELGO GmbH" => "support@felgo.com" }

  s.platform     = :ios, "10.0"

  s.source       = { :git => 'https://github.com/FelgoSDK/FelgoIOS.git', :tag => '3.7.0' }

  s.preserve_paths = "headers/*.h", "libs/*.a"

  s.source_files = "include/FelgoIOS.h", "include/FelgoIOSView.h"
  s.public_header_files = "include/FelgoIOS.h", "include/FelgoIOSView.h"
  s.header_mappings_dir = "include"

  # add all frameworks used by Qt/Felgo:
  s.frameworks = "AVFoundation", "AddressBook", "AssetsLibrary", "AudioToolbox", "CoreAudio", "CoreBluetooth", "CoreFoundation", "CoreGraphics", "CoreLocation", "CoreMedia", "CoreMotion", "CoreServices", "CoreText", "CoreVideo", "Foundation", "GameController", "ImageIO", "Photos", "QuartzCore", "Security", "UIKit", "WebKit"

  s.vendored_libraries = "libs/*.a"
  s.libraries = "z", "m", "stdc++"


end
