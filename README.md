# BugfenderSDK-iOS-swift-sample
Example code using Bugfender in Swift iOS.

[![Build Status](https://travis-ci.org/bugfender/BugfenderSDK-iOS-swift-sample.svg)](https://travis-ci.org/bugfender/BugfenderSDK-iOS-swift-sample)

## How to Build

- In order to build this example you need to install [CocoaPods](https://cocoapods.org) to download the needed dependencies (libraries) for this example.
- Once you have CocoaPods installed, go to the project's root and type in Terminal:
`pod install`
- Always open `BugfenderSDK-iOS-swift-sample.xcworkspace`, not the project alone, as this project needs all libraries downloaded by CocoaPods (and they're reference in the Workspace)

## Xcode 8 / iOS 10 building on device

If you open this project with Xcode 8 you'll see an error stating that:
> Signing for "BugfenderSDK-iOS-swift-sample" requires a development team. Select a development team in the project editor.
Code signing is required for product type 'Application' in SDK 'iOS 10.0'

So go to the project (BugfenderSDK-iOS-swift-sample blue icon), then select both targets (application & tests), and in General tab select a Team in Signing.

If you're going to run this App in the simulator this is not needed