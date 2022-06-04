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
        let inset = bounds.width * 0.23
        return UIEdgeInsets(top: inset, left: inset, bottom: inset, right: inset)
    }
    private var isSelected = false
    private var isFirstDraw = true
    
    // MARK: - Initializers
    
    init(categoryIndex: Int) {
        self.categoryIndex = categoryIndex
        self.categoryIconView = EmojiCategoryIconView(
            type: EmojiCategoryType(rawValue: categoryIndex) ?? .people
        )
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if isFirstDraw {
            isFirstDraw.toggle()
            setupLayout()
        }
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


