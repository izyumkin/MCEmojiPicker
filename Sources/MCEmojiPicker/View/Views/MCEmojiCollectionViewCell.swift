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

protocol MCEmojiCollectionViewCellDelegate: AnyObject {
    func preview(_ emoji: MCEmoji?, in cell: MCEmojiCollectionViewCell)
    func choiceSkinTone(_ emoji: MCEmoji?, in cell: MCEmojiCollectionViewCell)
    func didSelect(_ emoji: MCEmoji?, in cell: MCEmojiCollectionViewCell)
}

final class MCEmojiCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Public Properties
    
    public let emojiLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 29)
        label.textAlignment = .center
        return label
    }()
    
    public let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        if #available(iOS 13.0, *) {
            view.layer.cornerCurve = .continuous
        }
        view.layer.cornerRadius = 8
        return view
    }()
    
    // MARK: - Private Properties
    
    private weak var delegate: MCEmojiCollectionViewCellDelegate?
    
    private var emoji: MCEmoji?
    private var isSkinTonePickerShown = false
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
        setupGestures()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycle
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        guard !isFirstChoiceSkinTone() else { return }
        self.containerView.backgroundColor = .selectedCellBackgroundViewColor
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        guard let emoji = emoji,
              !(emoji.isCurrentEmojiHaveDifferentSkins && !emoji.isSkinBeenSelectedBefore) else { return }
        delegate?.didSelect(emoji, in: self)
        UIView.animate(withDuration: 0.3, delay: 0) {
            self.containerView.backgroundColor = .clear
        }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesCancelled(touches, with: event)
        self.containerView.backgroundColor = .clear
    }
    
    // MARK: - Public Methods
    
    public func configure(
        emoji: MCEmoji?,
        delegate: MCEmojiCollectionViewCellDelegate?
    ) {
        self.emoji = emoji
        self.emojiLabel.text = emoji?.string
        self.delegate = delegate
    }
    
    // MARK: - Actions
    
    @objc private func previewLongPressGestureAction(
        _ gestureRecognizer: UILongPressGestureRecognizer
    ) {
        guard let emoji = emoji else { return }
        switch gestureRecognizer.state {
        case .began:
            guard !isFirstChoiceSkinTone() else { return }
            delegate?.preview(emoji, in: self)
        case .ended where !isSkinTonePickerShown:
            delegate?.didSelect(emoji, in: self)
        default:
            break
        }
    }
    
    @objc private func choiceSkinToneLongPressGestureAction(
        _ gestureRecognizer: UILongPressGestureRecognizer
    ) {
        guard let emoji = emoji else { return }
        switch gestureRecognizer.state {
        case .began where emoji.isCurrentEmojiHaveDifferentSkins && emoji.isSkinBeenSelectedBefore:
            isSkinTonePickerShown = true
            delegate?.choiceSkinTone(emoji, in: self)
        case .ended where !emoji.isCurrentEmojiHaveDifferentSkins:
            delegate?.didSelect(emoji, in: self)
        default:
            break
        }
    }
    
    // MARK: - Private Methods
    
    private func isFirstChoiceSkinTone() -> Bool {
        guard let emoji = emoji else { return true }
        isSkinTonePickerShown = false
        switch emoji.isCurrentEmojiHaveDifferentSkins && !emoji.isSkinBeenSelectedBefore && !isSkinTonePickerShown {
        case true:
            isSkinTonePickerShown = true
            delegate?.choiceSkinTone(emoji, in: self)
            return true
        case false:
            return false
        }
    }
    
    private func setupLayout() {
        contentView.addSubview(containerView)
        contentView.addSubview(emojiLabel)
        
        NSLayoutConstraint.activate([
            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
            emojiLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 2.0),
            emojiLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -2.0),
            emojiLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            emojiLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    
    private func setupGestures() {
        let previewLongPressGesture = UILongPressGestureRecognizer(
            target: self,
            action: #selector(previewLongPressGestureAction)
        )
        let choiceSkinToneLongPressGesture = UILongPressGestureRecognizer(
            target: self,
            action: #selector(choiceSkinToneLongPressGestureAction)
        )
        choiceSkinToneLongPressGesture.delegate = self
        previewLongPressGesture.delegate = self
        previewLongPressGesture.minimumPressDuration = 0.15
        containerView.addGestureRecognizer(previewLongPressGesture)
        containerView.addGestureRecognizer(choiceSkinToneLongPressGesture)
    }
    
}

// MARK: - UIGestureRecognizerDelegate

extension MCEmojiCollectionViewCell: UIGestureRecognizerDelegate {
    func gestureRecognizer(
        _ gestureRecognizer: UIGestureRecognizer,
        shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer
    ) -> Bool {
        return true
    }
}
