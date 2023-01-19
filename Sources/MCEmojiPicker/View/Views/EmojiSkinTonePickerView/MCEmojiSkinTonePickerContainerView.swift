// The MIT License (MIT)
// Copyright © 2022 Ivan Izyumkin
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

import UIKit

final class MCEmojiSkinTonePickerContainerView: UIView {
    
    // MARK: - Private Properties
    
    private var sender: UIView = UIView()
    private var sourceView: UIView = UIView()
    private var emojiPickerFrame: CGRect
    private var emoji: String?
    
    private lazy var skinTonePicker = MCEmojiSkinTonePickerView(
        delegate: self,
        emoji: emoji,
        sender: sender,
        sourceView: sourceView,
        emojiPickerFrame: emojiPickerFrame
    )
    
    // MARK: - Initializers
    
    init(
        frame: CGRect,
        emoji: String?,
        sender: UIView,
        sourceView: UIView,
        emojiPickerFrame: CGRect
    ) {
        self.emoji = emoji
        self.sender = sender
        self.sourceView = sourceView
        self.emojiPickerFrame = emojiPickerFrame
        super.init(frame: frame)
        setupSkinTonePicker()
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(orientationChanged),
            name: UIDevice.orientationDidChangeNotification,
            object: nil
        )
        addGestureRecognizer(
            UITapGestureRecognizer(
                target: self,
                action: #selector(backgroundTapAction)
            )
        )
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        NotificationCenter.default.removeObserver(
            self,
            name: UIDevice.orientationDidChangeNotification,
            object: nil
        )
    }
    
    // MARK: - Actions
    
    @objc private func orientationChanged() {
        removeFromSuperview()
    }
    
    @objc private func backgroundTapAction() {
        removeFromSuperview()
    }
    
    // MARK: - Private Methods
    
    private func setupSkinTonePicker() {
        addSubview(skinTonePicker)
    }
    
}

// MARK: - MCEmojiSkinTonePickerViewDelegate

extension MCEmojiSkinTonePickerContainerView: MCEmojiSkinTonePickerViewDelegate {
    func didSelectEmojiTone(_ emojiToneIndex: Int?) {
        removeFromSuperview()
        guard let emojiToneIndex = emojiToneIndex,
              let emojiTone = MCEmojiSkinTone(rawValue: emojiToneIndex) else { return }
        print("Selected tone:", emojiTone)
    }
}
