//
//  EmojiSectionHeader.swift
//  EmojiPicker
//
//  Created by Иван Изюмкин on 01.06.2022.
//

import UIKit

final class EmojiSectionHeader: UICollectionReusableView {
    
    // MARK: - Public Methods
    
    public var categoryName: String = "" {
        didSet {
            headerLabel.text = categoryName
        }
    }
    
    // MARK: - Private Properties
    
    private let headerLabel: UILabel = {
        let label: UILabel = UILabel()
        label.textColor = .systemGray
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupBackground()
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private Methods
    
    private func setupBackground() {
        backgroundColor = .popoverBackgroundColor
    }
    
    private func setupLayout() {
        addSubview(headerLabel)
        NSLayoutConstraint.activate([
            headerLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 7),
            headerLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            headerLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -4)
        ])
    }
}
