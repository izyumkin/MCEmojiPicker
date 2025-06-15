//
//  MCEmojiPickerJSON.swift
//  MCEmojiPicker
//
//  Created by Harlan Haskins on 6/14/25.
//

import Foundation
@_spi(JSON) import MCEmojiPicker

extension URL {
    static let emojiDefinitionsDir = URL(fileURLWithPath: #file)
        .deletingLastPathComponent()
        .deletingLastPathComponent()
        .appendingPathComponent("MCEmojiPicker/Resources/EmojiDefinitions")
}

@main
struct MCEmojiPickerJSON {
    static func main() throws {
        for category in MCEmojiDefinitions.defaultEmojis {
            let encoder = JSONEncoder()
            let data = try encoder.encode(category)
            let fileName = "\(category.type.localizeKey).json"
            let url = URL.emojiDefinitionsDir.appendingPathComponent(fileName)
            try data.write(to: url)
        }
    }
}
