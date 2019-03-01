# coding: utf-8
#
#  Be sure to run `pod spec lint SmartLocalization.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "SmartLocalization"
  s.version      = "1.6.14"
  s.summary      = "A short description of SmartLocalization."

  s.description  = <<-DESC
  To be filled in
                   DESC

  s.homepage     = "http://EXAMPLE/SmartLocalization"

  s.license      = "MIT"

  s.author       = { "Pair" => "sia@singaporeair.com.sg" }

  s.platform     = :ios, "9.3"

  s.source       = { :git => "https://github.com/zhaodanqiang/SmartLocalization.git", :tag => "master" }

  s.source_files  = "SmartLocalization/**/*.{swift,h,m}"
  s.resources = "SmartLocalization/**/*.{storyboard,xib,xcassets}"

  s.dependency 'HandyJSON',     '~> 4.2.0'
  s.framework  = 'UIKit'

  s.requires_arc = true

  s.swift_version = '4.2'

  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.2' }

end
