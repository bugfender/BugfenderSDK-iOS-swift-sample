# BugfenderSDK-iOS-swift-sample
Sample code using the Bugfender Remote Logging library in Swift. iOS Example.

[![Build Status](https://travis-ci.org/bugfender/BugfenderSDK-iOS-swift-sample.svg)](https://travis-ci.org/bugfender/BugfenderSDK-iOS-swift-sample)

## What is this?

This App shows you how simple is it to setup & use the Bugfender Remote Logging library for iOS. We have a [Firsts Steps](http://support.bugfender.com/getting-started/first-steps-with-bugfender) post showing you how to create a free account in Bugfender site to run & check this example.

## Bugfender - iOS setup

In order to log things remotely, you'll need:

- an account at [Bugfender](https://bugfender.com)
    - an App created for that account, and copying its identifier
- add Bugfender SDK iOS library to your project. You have all the information [here](https://bugfender.com/platforms/ios/) but basically it is:
    - adding a dependency to your Cocoapods `Podfile` (something like `pod 'BugfenderSDK/Swift', '~> 1.4.2'`) 
)
    - enablig Bugfender: `Bugfender.activateLogger(yourBugFenderAppKey)`
- start logging things!
    - `BFLog("BugfenderSDK Hello World")`
        

## How to Build

### Manual build

- In order to build this example you need to install [CocoaPods](https://cocoapods.org) to download the needed dependencies (libraries) for this example.
- Once you have CocoaPods installed, go to the project's root and type in Terminal:
`pod install`
- Always open `BugfenderSDK-iOS-swift-sample.xcworkspace`, not the project alone, as this project needs all libraries downloaded by CocoaPods (and they're reference in the Workspace)
- For this App to do something useful, you need to:
    - create an account in [BugFender](https://app.bugfender.com)
    - create an App in your account. You'll get a Key for that App.
- Go to the `AppDelegate.swift` file and change the line:

```swift
let yourBugFenderAppKey = "xxxxxxxxxxxxx" //TODO: insert your key here!
```

add here the key you got before

### Fastlane build

- you can also build / test this App using [Fastlane Tools](https://fastlane.tools)
- install Fastlane (`sudo gem install fastlane`)
- go to the project's directory
- run 'fastlane build` | `fastlane test`

`$ fastlane test`

Installs pods, compiles & runs all tests

`$ fastlane build`

Installs pods, cleans previous compilations, bumps build number, compiles for the iOS simulator

## Xcode 8 / iOS 10 building on device

If you open this project with Xcode 8 you'll see an error stating that:
> Signing for "BugfenderSDK-iOS-swift-sample" requires a development team. Select a development team in the project editor.
Code signing is required for product type 'Application' in SDK 'iOS 10.0'

This means that you need to code-sign your binary if you want to run it on a real device (iPhone, iPad, etc.)

So go to the project (BugfenderSDK-iOS-swift-sample blue icon), then select both targets (application & tests), and in General tab select a Team in Signing.

If you're going to run this App in the simulator this is not needed