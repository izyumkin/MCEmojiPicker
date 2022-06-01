//
//  EmojiPickerViewController.swift
//  EmojiPicker
//
//  Created by Иван Изюмкин on 01.06.2022.
//

import UIKit

protocol EmojiPickerDelegate: AnyObject {
    func didGetEmoji(emoji: String)
}

final class EmojiPickerViewController: UIViewController {
    
    // MARK: - Public Properties
    
    public weak var delegate: EmojiPickerDelegate?
    
    // MARK: - Private Properties
    
    private let emojiPickerView = EmojiPickerView()
    private let emojiModel = EmojiCategoriesModel()
    private let generator = UIImpactFeedbackGenerator(style: .light)
    
    // MARK: - Initializers
    
    init() {
        super.init(nibName: nil, bundle: nil)
        setupDelegates()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycle
    
    override func loadView() {
        view = emojiPickerView
    }
    
    // MARK: - Private Methods
    
    private func setupDelegates() {
        emojiPickerView.collectionView.delegate = self
        emojiPickerView.collectionView.dataSource = self
    }
}

// MARK: - UICollectionViewDataSource

extension EmojiPickerViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return emojiModel.categoriesCount
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return emojiModel.emojiCategories[emojiModel.categoriesKeys[section]]?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: EmojiCollectionViewCell.identifier,
            for: indexPath
        ) as? EmojiCollectionViewCell else { return UICollectionViewCell() }
        cell.emoji = emojiModel.emojiCategories[emojiModel.categoriesKeys[indexPath.section]]?[indexPath.row] ?? ""
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader {
            guard let sectionHeader = collectionView.dequeueReusableSupplementaryView(
                ofKind: kind,
                withReuseIdentifier: EmojiSectionHeader.identifier,
                for: indexPath
            ) as? EmojiSectionHeader else { return UICollectionReusableView() }
            sectionHeader.sectionTitle = emojiModel.categoriesTitles[indexPath.section]
            return sectionHeader
        } else {
            return UICollectionReusableView()
        }
    }
}

// MARK: - UICollectionViewDelegate

extension EmojiPickerViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let emoji = emojiModel.emojiCategories[
            emojiModel.categoriesKeys[indexPath.section]
        ]?[indexPath.row] else { return }
        generator.impactOccurred()
        delegate?.didGetEmoji(emoji: emoji)
        dismiss(animated: true, completion: nil)
    }
}

// MARK: - UICollectionViewDelegateFlowLayout

extension EmojiPickerViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        insetForSectionAt section: Int
    ) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 20, right: 0)
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        referenceSizeForHeaderInSection section: Int
    ) -> CGSize {
        return CGSize(
            width: collectionView.frame.width,
            height: 15
        )
    }

    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath
    ) -> CGSize {
        return CGSize(
            width: emojiPickerView.collectionView.bounds.width / 9,
            height: emojiPickerView.collectionView.bounds.width / 9
        )
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        minimumLineSpacingForSectionAt section: Int
    ) -> CGFloat {
        return 0
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        minimumInteritemSpacingForSectionAt section: Int
    ) -> CGFloat {
        return 0
    }
}
