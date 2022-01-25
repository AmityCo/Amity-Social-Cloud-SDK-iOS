Pod::Spec.new do |s|
    s.name         = "AmitySDK"
    s.version      = "5.10.0"
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
    s.source       = { :http => 'https://s3-ap-southeast-1.amazonaws.com/ekosdk-release/ios/5.10.0/amitysdk.zip' }
    s.vendored_frameworks = 'amitysdk/Frameworks/AmitySDK.xcframework'
    s.platform = :ios
    s.swift_version = "5"
    s.ios.deployment_target  = '12.0'
    s.dependency 'Realm', '~> 10.21.1'

    # Exclude arm64 architecture
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    
end
