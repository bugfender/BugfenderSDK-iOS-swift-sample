#!/bin/sh
xcodebuild test -workspace BugfenderSDK-iOS-swift-sample.xcworkspace/ -scheme BugfenderSDK-iOS-swift-sample -destination 'platform=iOS Simulator,name=iPhone 6'
