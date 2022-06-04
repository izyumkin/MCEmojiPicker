//
//  EmojiCategoryView.swift
//  EmojiPicker
//
//  Created by Иван Изюмкин on 04.06.2022.
//

import UIKit

final class EmojiCategoryView: UIView {
    
    // MARK: - Private Properties
    
    private var categoryIconView: EmojiCategoryIconView
    private var categoryIndex: Int
    
    private var categoryIconViewInsets: UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    private var isSelected = false
    
    // MARK: - Initializers
    
    init(categoryIndex: Int) {
        self.categoryIndex = categoryIndex
        self.categoryIconView = EmojiCategoryIconView(
            type: EmojiCategoryType(rawValue: categoryIndex) ?? .people
        )
        super.init(frame: .zero)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - Touches Handling

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        categoryIconView.updateIcon(with: .highlighted)
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        isSelected.toggle()
        categoryIconView.updateIcon(with: isSelected ? .selected : .standard)
    }
    
    // MARK: - Private Methods
    
    private func setupLayout() {
        addSubview(categoryIconView)
        NSLayoutConstraint.activate([
            categoryIconView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: categoryIconViewInsets.left),
            categoryIconView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -categoryIconViewInsets.right),
            categoryIconView.topAnchor.constraint(equalTo: topAnchor, constant: categoryIconViewInsets.top),
            categoryIconView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -categoryIconViewInsets.bottom)
        ])
    }
}


