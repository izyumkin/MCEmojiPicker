// The MIT License (MIT)
// Copyright © 2023 Ivan Izyumkin
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import Foundation

enum MCEmojiType {
    case single
    case choiceOfSkin
}

enum MCEmojiSkinTone: Int, CaseIterable {
    case none = 1
    case light = 2
    case mediumLight = 3
    case medium = 4
    case mediumDark = 5
    case dark = 6
    
    var skinKey: Int? {
        switch self {
        case .none:
            return nil
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

struct MCEmoji {
    
    // MARK: - Public Properties
    
    public var string: String = ""
    public var isSkinBeenSelectedBefore: Bool {
        return UserDefaults.standard.integer(forKey: emojiKeys.emoji()) != 0
    }
    public var isCurrentEmojiHaveDifferentSkins: Bool {
        return emojiType == .choiceOfSkin
    }
    public var skinTone: MCEmojiSkinTone? {
        return MCEmojiSkinTone(rawValue: UserDefaults.standard.integer(
            forKey: emojiKeys.emoji()
        ))
    }
    
    public var searchKey: String
    public var emojiType: MCEmojiType = .single
    public var emojiKeys: [Int]
    public var unicodeVersion: Double
    
    // MARK: - Initializers
    
    public init(
        emojiKeys: [Int],
        emojiType: MCEmojiType,
        searchKey: String,
        unicodeVersion: Double
    ) {
        self.emojiKeys = emojiKeys
        self.emojiType = emojiType
        self.searchKey = searchKey
        self.unicodeVersion = unicodeVersion
        
        string = getEmoji()
    }
    
    // MARK: - Public Methods

    public mutating func set(skinToneRawValue: Int) {
        UserDefaults.standard.set(skinToneRawValue, forKey: emojiKeys.emoji())
        string = getEmoji()
    }
    
    // MARK: - Private Methods
    
    private func getEmoji() -> String {
        switch emojiType {
        case .single:
            return emojiKeys.emoji()
        case .choiceOfSkin:
            guard let skinTone = skinTone,
                  let skinToneKey = skinTone.skinKey else {
                return emojiKeys.emoji()
            }
            var bufferEmojiKeys = emojiKeys
            bufferEmojiKeys.insert(skinToneKey, at: 1)
            return bufferEmojiKeys.emoji()
        }
    }
}
