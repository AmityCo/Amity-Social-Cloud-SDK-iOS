Pod::Spec.new do |s|
    s.name         = "AmitySDK"
    s.version      = "5.33.9"
    s.summary      = "An SDK for messaging, social & live video platform provided by Amity."
    s.description  = <<-DESC
    Amity SDK supercharges your platform with social features — from Feeds and Chat to Stories and Live Streaming. Build online communities, drive social engagement, create positive experiences, and grow your revenue.
    DESC
    s.homepage     = "https://docs.amity.co/"
    s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright © 2021 Amity Corporation. 
                   All rights reserved.
                  LICENSE
                }
    s.author             = { "$(git config user.name)" => "$(git config user.email)" }
    s.source       = { :http => 'https://sdk.amity.co/sdk-release/ios/5.33.9/amitysdk.zip' }
    s.vendored_frameworks = 'Frameworks/AmitySDK.xcframework'
    s.platform = :ios
    s.swift_version = "5"
    s.ios.deployment_target  = '12.0'
    s.dependency 'Realm', '10.42.0'
    
end
