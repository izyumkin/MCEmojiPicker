//
//  EmojiCategoryView.swift
//  EmojiPicker
//
//  Created by Иван Изюмкин on 04.06.2022.
//

import UIKit

/**
 Delegate for handling touch gesture.
 */
protocol EmojiCategoryViewDelegate: AnyObject {
    /**
     Processes an event by category selection.
     
     - Parameter index: index of the selected category.
     */
    func didChoiceCategory(at index: Int)
}

/**
 The class store the category icon and processes handling touches.
 */
final class TouchableEmojiCategoryView: UIView {
    
    // MARK: - Private Properties
    
    private var categoryIconView: EmojiCategoryIconView
    /**
     Insets for categoryIconView.
     */
    private var categoryIconViewInsets: UIEdgeInsets {
        // The number 0.23 was taken based on the proportion of this element to the width of the EmojiPicker on MacOS.
        let inset = bounds.width * 0.23
        return UIEdgeInsets(top: inset, left: inset, bottom: inset, right: inset)
    }
    /**
     Target category index.
     */
    private var categoryIndex: Int
    
    private weak var delegate: EmojiCategoryViewDelegate?
    
    // MARK: - Initializers
    
    init(
        delegate: EmojiCategoryViewDelegate,
        categoryIndex: Int,
        selectedEmojiCategoryTintColor: UIColor
    ) {
        self.delegate = delegate
        self.categoryIndex = categoryIndex
        self.categoryIconView = EmojiCategoryIconView(
            type: EmojiCategoryType(rawValue: categoryIndex) ?? .people,
            selectedIconTintColor: selectedEmojiCategoryTintColor
        )
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycle
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupLayout()
    }
    
    // MARK: - Touches Handling

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        categoryIconView.updateIconTintColor(for: .highlighted)
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        categoryIconView.updateIconTintColor(for: .selected)
        delegate?.didChoiceCategory(at: categoryIndex)
    }
    
    // MARK: - Public Methods
    
    /**
     Updates the icon state to the selected one if the indexes match and the standard one if not.
     
     - Parameter selectedCategoryIndex: Selected category index.
     */
    public func updateCategoryViewState(selectedCategoryIndex: Int) {
        categoryIconView.updateIconTintColor(
            for: categoryIndex == selectedCategoryIndex ? .selected : .standard
        )
    }
    
    // MARK: - Private Methods
    
    private func setupLayout() {
        guard !categoryIconView.isDescendant(of: self) else { return }
        addSubview(categoryIconView)
        NSLayoutConstraint.activate([
            categoryIconView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: categoryIconViewInsets.left),
            categoryIconView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -categoryIconViewInsets.right),
            categoryIconView.topAnchor.constraint(equalTo: topAnchor, constant: categoryIconViewInsets.top),
            categoryIconView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -categoryIconViewInsets.bottom)
        ])
    }
}
