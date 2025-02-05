xcodebuild archive \
    -project Hear2ThereDemo.xcodeproj \
    -scheme Hear2ThereSDK \
    -destination "generic/platform=iOS" \
    -archivePath "archives/Hear2ThereSDK-iOS"

xcodebuild archive \
    -project Hear2ThereDemo.xcodeproj \
    -scheme Hear2ThereSDK \
    -destination "generic/platform=iOS Simulator" \
    -archivePath "archives/Hear2ThereSDK-iOS_Simulator"

xcodebuild -create-xcframework \
-archive archives/Hear2ThereSDK-iOS.xcarchive -framework Hear2ThereSDK.framework \
-archive archives/Hear2ThereSDK-iOS_Simulator.xcarchive -framework Hear2ThereSDK.framework \
-output xcframeworks/Hear2ThereSDK.xcframework