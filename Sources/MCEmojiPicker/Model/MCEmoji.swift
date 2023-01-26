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

/// The main model for interacting with emojis.
struct MCEmoji {
    
    // MARK: - Public Properties
    
    /// The string representation of the emoji.
    public var string: String = ""
    /// A boolean indicating whether the skin for this emoji has been selected before.
    public var isSkinBeenSelectedBefore: Bool {
        return UserDefaults.standard.integer(forKey: emojiKeys.emoji()) != 0
    }
    /// A boolean indicating whether this emoji has different skin tones available.
    public var isCurrentEmojiHaveDifferentSkins: Bool {
        return emojiType == .choiceOfSkin
    }
    /// The current skin tone for this emoji, if one has been selected.
    public var skinTone: MCEmojiSkinTone? {
        return MCEmojiSkinTone(rawValue: UserDefaults.standard.integer(
            forKey: emojiKeys.emoji()
        ))
    }
    
    /// The keys used to represent the emoji.
    public var emojiKeys: [Int]
    /// The type of the emoji.
    public var emojiType: MCEmojiType
    /// The search key for the emoji.
    public var searchKey: String
    /// The `Unicode` version of this emoji.
    public var unicodeVersion: Double
    
    // MARK: - Initializers
    
    /**
     Initializes a new instance of the `MCEmoji` struct.
     
     - Parameters:
       - emojiKeys: The keys used to represent the emoji.
       - emojiType: The type of the emoji.
       - searchKey: The search key for the emoji.
       - unicodeVersion: The `Unicode` version of the emoji.
     */
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

    /**
     Sets the skin tone of the emoji.
     
     - Parameters:
       - skinToneRawValue: The raw value of the `MCEmojiSkinTone`.
     */
    public mutating func set(skinToneRawValue: Int) {
        UserDefaults.standard.set(skinToneRawValue, forKey: emojiKeys.emoji())
        string = getEmoji()
    }
    
    // MARK: - Private Methods
    
    /// Returns the string representation of this smiley. Considering the skin tone, if it has been selected.
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

/// This enumeration allows you to determine which skin tones can be set for `MCEmoji`.
enum MCEmojiSkinTone: Int, CaseIterable {
    case none = 1
    case light = 2
    case mediumLight = 3
    case medium = 4
    case mediumDark = 5
    case dark = 6
    
    /// Unicode scalar value for the skin tone.
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

/// This enumeration allows you to determine whether it is possible to specify a skin tone for `MCEmoji`.
enum MCEmojiType {
    case single
    case choiceOfSkin
}
