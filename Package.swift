// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "MCEmojiPicker",
    defaultLocalization: "en",
    platforms: [.iOS(.v11.1)],
    products: [.library(name: "MCEmojiPicker", targets: ["MCEmojiPicker"])],
    targets: [.target(name: "MCEmojiPicker", dependencies: [], path: "Sources/MCEmojiPicker")]
)
