#!/bin/sh
xctool -workspace BugfenderSDK-iOS-swift-sample.xcworkspace -scheme BugfenderSDK-iOS-swift-sample clean
xctool -workspace BugfenderSDK-iOS-swift-sample.xcworkspace -scheme BugfenderSDK-iOS-swift-sample -sdk iphonesimulator build CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO
xctool -workspace BugfenderSDK-iOS-swift-sample.xcworkspace -scheme BugfenderSDK-iOS-swift-sample -sdk iphonesimulator test CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO
