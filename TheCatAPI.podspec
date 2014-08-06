#
# Be sure to run `pod lib lint TheCatAPI.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "TheCatAPI"
  s.version          = "1.0.0"
  s.summary          = "Cat images for your enjoyment."
  s.homepage         = "https://github.com/lostinthepines/TheCatAPI"
  s.license          = 'MIT'
  s.author           = { "Nate Bailey" => "nate@inthepin.es" }
  s.source           = { :git => "https://github.com/lostinthepines/TheCatAPI.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/inthepines'
  s.platform         = :ios, '5.0'
  s.requires_arc     = true
  s.source_files     = 'Classes'
  s.frameworks       = 'UIKit'
end
