//
//  EmojiPickerView.swift
//  EmojiPicker
//
//  Created by Иван Изюмкин on 01.06.2022.
//

import UIKit

final class EmojiPickerView: UIView {
    
    // MARK: - Public Properties
    
    public lazy var collectionView: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.verticalScrollIndicatorInsets = UIEdgeInsets(top: 20, left: 0, bottom: 20, right: 0)
        collectionView.contentInset = UIEdgeInsets(top: 30, left: 16, bottom: 0, right: 16)
        collectionView.backgroundColor = .clear
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(
            EmojiCollectionViewCell.self,
            forCellWithReuseIdentifier: EmojiCollectionViewCell.identifier
        )
        collectionView.register(
            EmojiSectionHeader.self,
            forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
            withReuseIdentifier: EmojiSectionHeader.identifier
        )
        return collectionView
    }()
    
    // MARK: - Initializers
    
    init() {
        super.init(frame: .zero)
        setupBackground()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private Methods
    
    private func setupBackground() {
        backgroundColor = .systemGroupedBackground
    }
    
    private func setupLayout() {
        addSubview(collectionView)
        NSLayoutConstraint.activate([
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            collectionView.topAnchor.constraint(equalTo: topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
}
