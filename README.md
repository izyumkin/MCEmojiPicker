# EmojiPicker

<p float="left">
<img src="https://user-images.githubusercontent.com/50948518/172110164-b0dec76f-495d-4112-ad00-2708ffdda54a.gif" width="230">
<img src="https://user-images.githubusercontent.com/50948518/171909950-ebf388f3-83a1-4b63-ad54-f58ba947e3bb.png" width="230">
</p>

I share the module out of my [application](https://apps.apple.com/ru/app/id1500111859) and make my own version of the emoji picker adaptation like on Mac.

## Quick Start
Create `UIButton` and add selector as action:
```swift
@objc private func selectEmojiAction(_ sender: UIButton) {
    let viewController = EmojiPickerViewController()
    viewController.delegate = self
    viewController.sourceView = sender
    present(viewController, animated: true)
}
```

And then recieve emoji in the delegate method:
```swift
extension ViewController: EmojiPickerDelegate {
    func didGetEmoji(emoji: String) {
        emojiButton.setTitle(emoji, for: .normal)
    }
}
```

## Usage

### Selected emoji category tint color
Color for the selected emoji category. The default value of this property is `.systemBlue`.

```swift
viewController.selectedEmojiCategoryTintColor = .systemRed
```

### Arrow direction
The direction of the arrow for EmojiPicker. The default value of this property is `.up`

```swift
viewController.arrowDirection = .up
```

### Horizontal inset
Inset from the `sourceView` border. The default value of this property is `0`

```swift
viewController.horizontalInset = 0
```

### Is dismiss after choosing
Defines whether to dismiss emoji picker or not after choosing. The default value of this property is `true`

```swift
viewController.isDismissAfterChoosing = true
```

### Custom height
Custom height for EmojiPicker. The default value of this property is `nil`

```swift
viewController.customHeight = 300
```

### Feedback generator style
Feedback generator style. To turn off, set `nil` to this parameter. The default value of this property is `.light`.

```swift
viewController.feedBackGeneratorStyle = .soft
```

## Features

-   [x] The main functionality for choosing emojis
-   [x] Dark mode
-   [x] Segmented control for jumping an emoji section
-   [x] Automatic adjustment of the relevant set of emoji for the iOS version
-   [ ] Select skin tones from popup
-   [ ] Seach bar and search results
-   [ ] Recently used

## Localizations
* English 🇬🇧
* Russian 🇷🇺
