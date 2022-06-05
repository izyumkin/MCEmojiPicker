//
//  EmojiPickerView.swift
//  EmojiPicker
//
//  Created by Иван Изюмкин on 01.06.2022.
//

import UIKit

protocol EmojiPickerViewDelegate: AnyObject {
    func didChoiceEmojiCategory(at index: Int)
}

final class EmojiPickerView: UIView {
    
    // MARK: - Public Properties
    
    public lazy var collectionView: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionHeadersPinToVisibleBounds = true
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.verticalScrollIndicatorInsets = UIEdgeInsets(top: 8, left: 0, bottom: 8, right: 0)
        collectionView.contentInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
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
    
    public weak var delegate: EmojiPickerViewDelegate?
    
    // MARK: - Private Properties
    
    private let categoriesStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.backgroundColor = .systemGroupedBackground
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    private var categoryViews = [EmojiCategoryView]()
    
    /// Getting the upper indent from the arrow
    private var topArrowInset: CGFloat {
        guard let shapeLayer = superview?.superview?.mask?.layer as? CAShapeLayer,
              let topArrowInset = shapeLayer.path?.currentPoint.y else { return 0 }
        return topArrowInset
    }
    
    private var categoriesControlHeight: CGFloat {
        guard let shapeLayer = superview?.superview?.mask?.layer as? CAShapeLayer,
              let popoverWidth = shapeLayer.path?.boundingBox.size.width else { return 0 }
        return popoverWidth * 0.13
    }
    
    // MARK: - Initializers
    
    init() {
        super.init(frame: .zero)
        setupBackground()
        setupCategoryViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        setupLayout()
        setupCategoriesControlLayout()
    }
    
    // MARK: - Public Methods
    
    public func updateSelectedCategoryIcon(with categoryIndex: Int) {
        categoryViews.forEach({
            $0.updateCategoryViewState(selectedCategoryIndex: categoryIndex)
        })
    }
    
    // MARK: - Private Methods
    
    private func setupBackground() {
        backgroundColor = .systemGroupedBackground
    }
    
    private func setupLayout() {
        addSubview(collectionView)
        collectionView.contentInset.bottom = categoriesControlHeight
        collectionView.verticalScrollIndicatorInsets.bottom = categoriesControlHeight
        NSLayoutConstraint.activate([
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            collectionView.topAnchor.constraint(equalTo: topAnchor, constant: topArrowInset),
            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    private func setupCategoriesControlLayout() {
        let separatorView = UIView()
        separatorView.translatesAutoresizingMaskIntoConstraints = false
        separatorView.backgroundColor = .opaqueSeparator
        
        addSubview(categoriesStackView)
        addSubview(separatorView)
        NSLayoutConstraint.activate([
            categoriesStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            categoriesStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            categoriesStackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            categoriesStackView.heightAnchor.constraint(equalToConstant: categoriesControlHeight),
            
            separatorView.leadingAnchor.constraint(equalTo: leadingAnchor),
            separatorView.trailingAnchor.constraint(equalTo: trailingAnchor),
            separatorView.topAnchor.constraint(equalTo: categoriesStackView.topAnchor),
            separatorView.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
    
    private func setupCategoryViews() {
        for categoryIndex in 0...7 {
            let categoryView = EmojiCategoryView(categoryIndex: categoryIndex)
            categoryView.delegate = self
            // Installing selected state for first categoryView
            categoryView.updateCategoryViewState(selectedCategoryIndex: 0)
            categoryViews.append(categoryView)
            categoriesStackView.addArrangedSubview(categoryView)
        }
    }
}

// MARK: - EmojiCategoryViewDelegate

extension EmojiPickerView: EmojiCategoryViewDelegate {
    func didChoiceCategory(at index: Int) {
        guard let cellFrame = collectionView.collectionViewLayout.layoutAttributesForItem(at: IndexPath(item: 0, section: index))?.frame,
              let headerFrame = collectionView.collectionViewLayout.layoutAttributesForSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, at: IndexPath(item: 0, section: index))?.frame
        else { return }
        collectionView.setContentOffset(
            CGPoint(
                x:  -collectionView.contentInset.left,
                y: cellFrame.minY - headerFrame.height
            ),
            animated: false
        )
        delegate?.didChoiceEmojiCategory(at: index)
    }
}
