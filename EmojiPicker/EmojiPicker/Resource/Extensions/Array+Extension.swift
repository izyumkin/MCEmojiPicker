//
//  Array+Extension.swift
//  EmojiPicker
//
//  Created by Иван Изюмкин on 07.06.2022.
//

import Foundation

extension Array where Element == Int {
    func emoji() -> String {
        var emoji = ""
        for hexValue in self {
            guard let unicode = UnicodeScalar(hexValue) else { break }
            emoji.append(String(unicode))
        }
        return emoji
    }
}
