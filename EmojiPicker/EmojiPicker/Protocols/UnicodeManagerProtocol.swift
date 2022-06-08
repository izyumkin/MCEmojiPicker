//
//  UnicodeManagerProtocol.swift
//  EmojiPicker
//
//  Created by Иван Изюмкин on 07.06.2022.
//

import Foundation

/**
 The protocol is necessary to hide unnecessary methods with Unicode categories in UnicodeManager.
 */
protocol UnicodeManagerProtocol {
    /**
     Returns relevant emojis for the current iOS version.
     */
    func getEmojisForCurrentIOSVersion() -> [EmojiCategory]
}
