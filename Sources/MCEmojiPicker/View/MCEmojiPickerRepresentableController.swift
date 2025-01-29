// The MIT License (MIT)
//
// Copyright © 2023 Ivan Izyumkin
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import SwiftUI

@available(iOS 13.0, *)
public struct MCEmojiPickerRepresentableController: UIViewControllerRepresentable {

    public enum PresentationMode: String {
        case none
        case sheet
        case view
    }

    // MARK: - Public Properties
    
    /// Observed value which is responsible for the state of the picker.
    ///
    /// `none` and `sheet` are used to present while `view` will display it *as is*.
    ///  Default (not specifying the parameter) is `view`.
    @Binding var presentationMode: PresentationMode

    /// Observed value which is updated by the selected emoji.
    @Binding var selectedEmoji: String
    
    /// The direction of the arrow for EmojiPicker.
    ///
    /// The default value of this property is `.up`.
    public var arrowDirection: MCPickerArrowDirection?
    
    /// Custom height for EmojiPicker.
    /// But it will be limited by the distance from sourceView.origin.y to the upper or lower bound(depends on permittedArrowDirections).
    ///
    /// The default value of this property is `nil`.
    public var customHeight: CGFloat?
    
    /// Inset from the sourceView border.
    ///
    /// The default value of this property is `0`.
    public var horizontalInset: CGFloat?
    
    /// A boolean value that determines whether the screen will be hidden after the emoji is selected.
    ///
    /// If this property’s value is `true`, the EmojiPicker will be dismissed after the emoji is selected.
    /// If you want EmojiPicker not to dismissed after emoji selection, you must set this property to `false`.
    /// The default value of this property is `true`.
    public var isDismissAfterChoosing: Bool?
    
    /// Color for the selected emoji category.
    ///
    /// The default value of this property is `.systemBlue`.
    public var selectedEmojiCategoryTintColor: UIColor?
    
    /// Feedback generator style. To turn off, set `nil` to this parameter.
    ///
    /// The default value of this property is `.light`.
    public var feedBackGeneratorStyle: UIImpactFeedbackGenerator.FeedbackStyle?

    /// The maximum current iOS Version that we should display the Emojis for
    ///
    /// Emojis aren't always available. They come and go for iOS Versions. If the receiver of the Emoji receives
    /// an Emoji its iOS Version doesn't support, it will be replaced by a character that signals this Emoji isn't readable.
    /// The sender won't know about it though, letting him confused.
    public var maxCurrentAvailableOsVersion: Float?

    /// Wether the Header of the Categories should display how many Emojis are in it.
    ///
    /// This can be very useful for example, when displaying the amount of Emojis for a specific iOS Version,
    /// in combination with `maxCurrentAvailableOsVersion`.
    public var displayCountOfEmojisInHeader = false

    /// Wether we will show all the Emojis available until this version of specifically only the new ones
    ///
    /// For consistence, when this is `true`, we will ignore `showEmptyEmojiCategories`
    public var onlyShowNewEmojisForVersion = false

    /// Ability to pass code that will be switching to the next keyboard.
    ///
    /// This will most probably only used when the Emoji Picker is used in a Keyboard
    /// Default being `nil`, when this is not `nil`, the `abc` button will appear before the categories.
    public let nextKeyboard: (() -> Void)?

    /// Ablity to pass code that will be called when the back button is hit
    ///
    /// This will most probably only used when the Emoji Picker is used in a Keyboard
    /// Default being `nil`, when this is not `nil`, the `back` button will appear after the categories.
    public let deleteBackward: (() -> Void)?

    // MARK: - Initializers
    
    public init(
        presentationMode: Binding<PresentationMode> = .constant(.view),
        selectedEmoji: Binding<String>,
        arrowDirection: MCPickerArrowDirection? = nil,
        customHeight: CGFloat? = nil,
        horizontalInset: CGFloat? = nil,
        isDismissAfterChoosing: Bool? = nil,
        selectedEmojiCategoryTintColor: UIColor? = nil,
        feedBackGeneratorStyle: UIImpactFeedbackGenerator.FeedbackStyle? = nil,
        maxCurrentAvailableOsVersion: Float? = nil,
        displayCountOfEmojisInHeader: Bool = false,
        onlyShowNewEmojisForVersion: Bool = false,
        nextKeyboard: (() -> Void)? = nil,
        deleteBackward: (() -> Void)? = nil
    ) {
        self._presentationMode = presentationMode
        self._selectedEmoji = selectedEmoji
        self.arrowDirection = arrowDirection
        self.customHeight = customHeight
        self.horizontalInset = horizontalInset
        self.isDismissAfterChoosing = isDismissAfterChoosing
        self.selectedEmojiCategoryTintColor = selectedEmojiCategoryTintColor
        self.feedBackGeneratorStyle = feedBackGeneratorStyle
        self.maxCurrentAvailableOsVersion = maxCurrentAvailableOsVersion
        self.displayCountOfEmojisInHeader = displayCountOfEmojisInHeader
        self.onlyShowNewEmojisForVersion = onlyShowNewEmojisForVersion
        self.nextKeyboard = nextKeyboard
        self.deleteBackward = deleteBackward
    }
    
    // MARK: - Public Methods
    
    public func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    public func makeUIViewController(context: Context) -> UIViewController {
        if presentationMode == .view {
            emojiPicker(context)
        } else {
            UIViewController()
        }
    }
    
    public func updateUIViewController(_ representableController: UIViewController, context: Context) {
        guard !context.coordinator.isNewEmojiSet else {
            context.coordinator.isNewEmojiSet.toggle()
            return
        }
        if representableController is MCEmojiPickerViewController { return }
        switch presentationMode {
        case .sheet, .view:
            guard representableController.presentedViewController == nil else { return }
            let emojiPicker = emojiPicker(context, representableController: representableController)
            if let arrowDirection { emojiPicker.arrowDirection = arrowDirection }
            if let customHeight { emojiPicker.customHeight = customHeight }
            if let horizontalInset { emojiPicker.horizontalInset = horizontalInset }
            if let isDismissAfterChoosing { emojiPicker.isDismissAfterChoosing = isDismissAfterChoosing }
            if let selectedEmojiCategoryTintColor {
                emojiPicker.selectedEmojiCategoryTintColor = selectedEmojiCategoryTintColor
            }
            if let feedBackGeneratorStyle { emojiPicker.feedBackGeneratorStyle = feedBackGeneratorStyle }
            context.coordinator.addPickerDismissingObserver()
            representableController.present(emojiPicker, animated: true)
        case .none:
            if representableController.presentedViewController is MCEmojiPickerViewController && context.coordinator.presentationMode != .none {
                representableController.presentedViewController?.dismiss(animated: true)
            }
        }
        context.coordinator.presentationMode = presentationMode
    }

    private func emojiPicker(_ context: Context, representableController: UIViewController? = nil) -> MCEmojiPickerViewController {
        let emojiPicker = MCEmojiPickerViewController(
            maxCurrentAvailableOsVersion,
            onlyShowNewEmojisForVersion: onlyShowNewEmojisForVersion,
            nextKeyboard: nextKeyboard,
            deleteBackward: deleteBackward
        )
        emojiPicker.delegate = context.coordinator
        emojiPicker.sourceView = representableController?.view
        emojiPicker.displayCountOfEmojisInHeader = displayCountOfEmojisInHeader
        return emojiPicker
    }
}

// MARK: - Coordinator

@available(iOS 13.0, *)
extension MCEmojiPickerRepresentableController {
    public class Coordinator: NSObject, MCEmojiPickerDelegate {
        
        public var isNewEmojiSet = false
        public var presentationMode = MCEmojiPickerRepresentableController.PresentationMode.none

        private var representableController: MCEmojiPickerRepresentableController
        
        init(_ representableController: MCEmojiPickerRepresentableController) {
            self.representableController = representableController
        }
        
        public func addPickerDismissingObserver() {
            NotificationCenter.default.addObserver(self, selector: #selector(pickerDismissingAction), name: .MCEmojiPickerDidDisappear, object: nil)
        }
        
        public func didGetEmoji(emoji: String) {
            isNewEmojiSet.toggle()
            representableController.selectedEmoji = emoji
        }
        
        @objc public func pickerDismissingAction() {
            NotificationCenter.default.removeObserver(self, name: .MCEmojiPickerDidDisappear, object: nil)
            representableController.presentationMode = .none
        }
    }
}
