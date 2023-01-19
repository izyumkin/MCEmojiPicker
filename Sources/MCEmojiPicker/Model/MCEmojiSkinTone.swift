//
//  MCEmojiSkinTone.swift
//  MCEmojiPicker
//
//  Created by Иван Изюмкин on 19.01.2023.
//

import Foundation

enum MCEmojiSkinTone: Int, CaseIterable {
    case none
    case light
    case mediumLight
    case medium
    case mediumDark
    case dark
    
    var skinKey: Int {
        switch self {
        case .none:
            return 0x0
        case .light:
            return 0x1F3FB
        case .mediumLight:
            return 0x1F3FC
        case .medium:
            return 0x1F3FD
        case .mediumDark:
            return 0x1F3FE
        case .dark:
            return 0x1F3FF
        }
    }
}
