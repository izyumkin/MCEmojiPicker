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
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 30)
        label.textAlignment = .center
        return label
    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSelectedBackgroundView()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private Methods
    
    private func setupLayout() {
        contentView.addSubview(emojiLabel)
        NSLayoutConstraint.activate([
            emojiLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            emojiLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            emojiLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            emojiLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    
    private func setupSelectedBackgroundView() {
        let selectedView = UIView()
        selectedView.backgroundColor = .selectedCellBackgroundViewColor
        selectedView.clipsToBounds = true
        if #available(iOS 13.0, *) {
            selectedView.layer.cornerCurve = .continuous
        }
        selectedView.layer.cornerRadius = 8
        selectedBackgroundView = selectedView
    }
    
}
