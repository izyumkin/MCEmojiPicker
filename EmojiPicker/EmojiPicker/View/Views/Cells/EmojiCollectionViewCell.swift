//
//  EmojiCollectionViewCell.swift
//  EmojiPicker
//
//  Created by Иван Изюмкин on 01.06.2022.
//

import UIKit

final class EmojiCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Public Properties
    
    public var emoji: String? {
        didSet {
            emojiLabel.text = emoji
        }
    }
    
    // MARK: - Private Properties
    
    private let emojiLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 30)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
        setupSelectedBackgroundView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private Methods
    
    private func setupLayout() {
        contentView.addSubview(emojiLabel)
        NSLayoutConstraint.activate([
            emojiLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            emojiLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
    }
    
    private func setupSelectedBackgroundView() {
        let selectedView = UIView()
        selectedView.backgroundColor = .systemGray3
        selectedView.clipsToBounds = true
        selectedView.layer.cornerRadius = 8
        selectedBackgroundView = selectedView
    }
    
}
