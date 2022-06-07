//
//  UnicodeManagerProtocol.swift
//  EmojiPicker
//
//  Created by Иван Изюмкин on 07.06.2022.
//

import Foundation

protocol UnicodeManagerProtocol {
    func getEmojisForCurrentIOSVersion() -> [EmojiCategory]
}
