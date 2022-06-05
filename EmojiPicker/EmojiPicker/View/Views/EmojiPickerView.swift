//
//  EmojiPickerView.swift
//  EmojiPicker
//
//  Created by Иван Изюмкин on 01.06.2022.
//

import UIKit

/**
 Delegate for event handling in EmojiPickerView.
 */
protocol EmojiPickerViewDelegate: AnyObject {
    /**
     Processes an event by category selection.
     
     - Parameter index: index of the selected category.
     */
    func didChoiceEmojiCategory(at index: Int)
}

final class EmojiPickerView: UIView {
    
    // MARK: - Public Properties
    
    public lazy var collectionView: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionHeadersPinToVisibleBounds = true
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.verticalScrollIndicatorInsets.top = 8
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
    
    private var categoryViews = [TouchableEmojiCategoryView]()
    
    /**
     Returns the upper indent from the arrow.
     */
    private var topArrowInset: CGFloat {
        guard let shapeLayer = superview?.superview?.mask?.layer as? CAShapeLayer,
              let topArrowInset = shapeLayer.path?.currentPoint.y else { return 0 }
        return topArrowInset
    }
    /**
     Height for categoriesStackView.
     */
    private var categoriesStackViewHeight: CGFloat {
        guard let shapeLayer = superview?.superview?.mask?.layer as? CAShapeLayer,
              let popoverWidth = shapeLayer.path?.boundingBox.size.width else { return 0 }
        // The number 0.13 was taken based on the proportion of this element to the width of the EmojiPicker on Mac.
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
        setupCollectionViewBottomInsets()
        setupCategoriesControlLayout()
    }
    
    // MARK: - Public Methods
    
    /**
     Passes the index of the selected category to all categoryViews to update the state.
     
     - Parameter categoryIndex: Selected category index.
     */
    public func updateSelectedCategoryIcon(with categoryIndex: Int) {
        categoryViews.forEach({
            $0.updateCategoryViewState(selectedCategoryIndex: categoryIndex)
        })
    }
    
    // MARK: - Private Methods
    
    private func setupBackground() {
        backgroundColor = .systemGroupedBackground
    }
    
    private func setupCollectionViewBottomInsets() {
        collectionView.contentInset.bottom = categoriesStackViewHeight
        collectionView.verticalScrollIndicatorInsets.bottom = categoriesStackViewHeight
    }
    
    private func setupLayout() {
        addSubview(collectionView)
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
            categoriesStackView.heightAnchor.constraint(equalToConstant: categoriesStackViewHeight),
            
            separatorView.leadingAnchor.constraint(equalTo: leadingAnchor),
            separatorView.trailingAnchor.constraint(equalTo: trailingAnchor),
            separatorView.topAnchor.constraint(equalTo: categoriesStackView.topAnchor),
            separatorView.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
    
    private func setupCategoryViews() {
        for categoryIndex in 0...7 {
            let categoryView = TouchableEmojiCategoryView(categoryIndex: categoryIndex)
            categoryView.delegate = self
            // Installing selected state for first categoryView
            categoryView.updateCategoryViewState(selectedCategoryIndex: 0)
            categoryViews.append(categoryView)
            categoriesStackView.addArrangedSubview(categoryView)
        }
    }
    
    /**
     Scroll collectionView to header for selected category.
     
     - Parameter section: Selected category index.
     */
    private func scrollToHeader(for section: Int) {
        guard let cellFrame = collectionView.collectionViewLayout.layoutAttributesForItem(at: IndexPath(item: 0, section: section))?.frame,
              let headerFrame = collectionView.collectionViewLayout.layoutAttributesForSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, at: IndexPath(item: 0, section: section))?.frame
        else { return }
        collectionView.setContentOffset(
            CGPoint(
                x:  -collectionView.contentInset.left,
                y: cellFrame.minY - headerFrame.height
            ),
            animated: false
        )
    }
}

// MARK: - EmojiCategoryViewDelegate

extension EmojiPickerView: EmojiCategoryViewDelegate {
    func didChoiceCategory(at index: Int) {
        scrollToHeader(for: index)
        delegate?.didChoiceEmojiCategory(at: index)
    }
}
