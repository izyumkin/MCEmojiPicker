//
//  UIColor+Extension.swift
//  EmojiPicker
//
//  Created by Иван Изюмкин on 08.06.2022.
//

import UIKit

extension UIColor {
    /**
     Color for EmojiPicker background - .systemGroupedBackground.
     */
    static let popoverBackgroundColor = UIColor(
        light:  UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.0),
        dark: UIColor(red: 0.11, green: 0.11, blue: 0.12, alpha: 1.0)
    )
    /**
     Color for selectedBackgroundView background in EmojiCollectionViewCell - .opaqueSeparator.
     */
    static let selectedCellBackgroundViewColor = UIColor(
        light: UIColor(red: 0.78, green: 0.78, blue: 0.8, alpha: 1.0),
        dark: UIColor(red: 0.28, green: 0.28, blue: 0.29, alpha: 1.0)
    )
    /**
     Color for selectedBackgroundView background in EmojiCollectionViewCell - .systemGray3.
     */
    static let separatorColor = UIColor(
        light: UIColor(red: 0.78, green: 0.78, blue: 0.78, alpha: 1.0),
        dark: UIColor(red: 0.22, green: 0.22, blue: 0.23, alpha: 1.0)
    )
}


extension UIColor {
    convenience init(light: UIColor, dark: UIColor) {
        if #available(iOS 13.0, *) {
            self.init(dynamicProvider: { trait in
                trait.userInterfaceStyle == .dark ? dark : light
            })
        } else {
            self.init(cgColor: light.cgColor)
        }
    }
}
