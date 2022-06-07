//
//  EmojiModel.swift
//  EmojiPicker
//
//  Created by Иван Изюмкин on 02.06.2022.
//

import Foundation

/**
 Enum with emoji categories.
 */
public enum EmojiCategoryType: Int {
    case people = 0
    case nature = 1
    case foodAndDrink = 2
    case activity = 3
    case travelAndPlaces = 4
    case objects = 5
    case symbols = 6
    case flags = 7
}

public struct EmojiCategory {
    var categoryName: String
    var emojis: [[Int]]
}
