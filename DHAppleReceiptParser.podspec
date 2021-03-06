Pod::Spec.new do |s|

  s.name         = "DHAppleReceiptParser"
  s.version      = "1.0.2"
  s.summary      = "Parser for the receipt file available in iOS 7."
  s.description  = <<-DESC
                   A library to parse the apple receipt file in iOS 7 as defined here:
https://developer.apple.com/library/ios/releasenotes/General/ValidateAppStoreReceipt/Chapters/ValidateLocally.html#//apple_ref/doc/uid/TP40010573-CH1-SW3
                   This library does *not* handle validation -- by Apple's design, it
                   is necessary to provide your own validation code for security reasons.

                   This library *does* make it easier to fetch in-app purchase data stored
                   on the device, which could be used for server side receipt validation.
                   DESC

  s.homepage     = "https://github.com/DarkHorseComics/DHAppleReceiptParser"
  s.license      = "MIT"
  s.author       = { "Chase Caster" => "chasec@darkhorse.com" }
  s.platform     = :ios, "6.0"
  s.requires_arc = true
  s.source       = { :git => "https://github.com/DarkHorseComics/DHAppleReceiptParser.git", :tag => "1.0.2" }
  
  s.source_files = "*.{h,m}", "include/**/*.{h,c}"
  s.public_header_files = "DHAppStoreReceipt.h"
  s.preserve_paths = 'lib/libcrypto.a', 'openssl'
  s.libraries    = "crypto"
  s.xcconfig     = {
    'HEADER_SEARCH_PATHS' => '"/code/DHAppleReceiptParser/include/**" "/code/DHAppleReceiptParser/include/openssl"',
  }

end
