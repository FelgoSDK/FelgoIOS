
Pod::Spec.new do |s|


  s.name         = "VPlayIOS"
  s.version      = "2.18.3"
  s.summary      = "V-Play in native iOS projects"

  s.description  = <<-DESC
          Use V-Play, Qt and QML in a native iOS app from Xcode.
                   DESC

  s.homepage     = "https://v-play.net"

  s.license      = "Proprietary"

  s.author       = { "V-Play GmbH" => "support@v-play.net" }

  s.platform     = :ios, "10.0"

  s.source       = { :git => 'https://github.com/V-Play/VPlayIOS.git', :tag => '2.18.3' }

  s.preserve_paths = "headers/*.h", "libs/*.a"

  s.source_files = "include/VPlayIOS.h", "include/VPlayIOSView.h"
  s.public_header_files = "include/VPlayIOS.h", "include/VPlayIOSView.h"
  s.header_mappings_dir = "include"

  # add all frameworks used by Qt/VP?
  s.frameworks = "AddressBook",
    "Foundation",
    "QuartzCore",
    "GameController",
    "AudioToolbox",
    "CoreBluetooth",
    "CoreFoundation",
    "CoreGraphics",
    "CoreLocation",
    "CoreMotion",
    "CoreText",
    "CoreAudio",
    "CoreMedia",
    "CoreVideo",
    "Security",
    "AVFoundation",
    "MobileCoreServices",
    "SystemConfiguration",
    "UIKit",
    "OpenGLES",
    "AssetsLibrary",
    "WebKit"

  s.vendored_libraries = "libs/*.a"
  s.libraries = "z", "m", "stdc++"


end
