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

final class MCEmojiSkinTonePickerView: UIView {
    
    // MARK: - Private Properties
    
    private lazy var backgroundView = MCEmojiSkinTonePickerBackgroundView(
        frame: bounds,
        senderFrame: sender.convert(sender.bounds, to: self)
    )
    
    private var sender: UIView = UIView()
    private var sourceView: UIView = UIView()
    private var emojiPickerFrame: CGRect
    
    // MARK: - Initializers
    
    init(
        emoji: String?,
        sender: UIView,
        sourceView: UIView,
        emojiPickerFrame: CGRect
    ) {
        self.sender = sender
        self.sourceView = sourceView
        self.emojiPickerFrame = emojiPickerFrame
        super.init(frame: .zero)
        isUserInteractionEnabled = false
        setupLayout()
        setupBackground()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private Methods
    
    private func setupLayout() {
        let sourceRect = sender.convert(sender.bounds, to: sourceView)
        let targetViewSize = CGSize(
            width: sourceRect.width * 6,
            height: sourceRect.height * 2.65
        )
        
        frame = .init(
            x: sourceRect.midX - targetViewSize.width / 2,
            y: sourceRect.maxY - targetViewSize.height,
            width: targetViewSize.width,
            height: targetViewSize.height
        )

        if frame.minX < emojiPickerFrame.minX {
            frame.origin.x = emojiPickerFrame.minX
        }

        if frame.maxX > emojiPickerFrame.maxX {
            frame.origin.x = emojiPickerFrame.maxX - targetViewSize.width
        }
    }
    
    private func setupBackground() {
        addSubview(backgroundView)
    }
    
}
