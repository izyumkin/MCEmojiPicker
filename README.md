# EmojiPicker
Emoji picker for iOS like on macOS

<p float="left">
<img src="https://user-images.githubusercontent.com/50948518/172110164-b0dec76f-495d-4112-ad00-2708ffdda54a.gif" width="230">
<img src="https://user-images.githubusercontent.com/50948518/171909950-ebf388f3-83a1-4b63-ad54-f58ba947e3bb.png" width="230">
</p>

## Installation
Ready for use on iOS 12+

### Swift Package Manager
The [Swift Package Manager](https://www.swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler. It’s integrated with the Swift build system to automate the process of downloading, compiling, and linking dependencies.

Once you have your Swift package set up, adding as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.
```
dependencies: [
    .package(url: "https://github.com/izzyumkin/EmojiPicker", .upToNextMajor(from: "1.0.0"))
]
```

### Manually
If you prefer not to use any of dependency managers, you can integrate manually. Put `Sources/EmojiPicker` folder in your Xcode project. Make sure to enable `Copy items if needed` and `Create groups`.

## Quick Start


## Usage
### Selected emoji category tint color


### Arrow direction


### Horizontal inset


### Is dismiss after choosing


### Custom height


## To do
- [x] The main functionality for choosing emojis
- [x] Dark mode
- [x] Segmented control for jumping an emoji section
- [x] Automatic adjustment of the relevant set of emoji for the iOS version
- [ ] Select skin tones from popup
- [ ] Seach bar and search results
- [ ] Recently used

## Localizations
["ru", "en"]
