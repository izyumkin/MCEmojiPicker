// The MIT License (MIT)
//
// Copyright © 2022 Ivan Izyumkin
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

/// Protocol for the `MCEmojiPickerViewModel`.
protocol MCEmojiPickerViewModelProtocol {
    /// Whether the picker shows empty categories. Default false.
    var showEmptyEmojiCategories: Bool { get set }
    /// The emoji categories being used
    var emojiCategories: [MCEmojiCategory] { get }
    /// The observed variable that is responsible for the choice of emoji.
    var selectedEmoji: Observable<MCEmoji?> { get set }
    /// The observed variable that is responsible for the choice of emoji category.
    var selectedEmojiCategoryIndex: Observable<Int> { get set }
    /// Clears the selected emoji, setting to `nil`.
    func clearSelectedEmoji()
    /// Returns the number of categories with emojis.
    func numberOfSections() -> Int
    /// Returns the number of emojis in the target section.
    func numberOfItems(in section: Int) -> Int
    /// Returns the `MCEmoji` for the target `IndexPath`.
    func emoji(at indexPath: IndexPath) -> MCEmoji
    /// Returns the localized section name for the target section.
    func sectionHeaderName(for section: Int) -> String
    /// Updates the emoji skin tone and returns the updated `MCEmoji`.
    func updateEmojiSkinTone(_ skinToneRawValue: Int, in indexPath: IndexPath) -> MCEmoji
    /// Search among all emojis
    func search(_ searchTerm: String)
    /// Clear search
    func clearSearch()
    /// If we are searching
    func isSearching() -> Bool
}

/// View model which using in `MCEmojiPickerViewController`.
final class MCEmojiPickerViewModel: MCEmojiPickerViewModelProtocol {

    // MARK: - Public Properties

    public var selectedEmoji = Observable<MCEmoji?>(value: nil)
    public var selectedEmojiCategoryIndex = Observable<Int>(value: 0)
    public var showEmptyEmojiCategories = false
    public var emojiCategories: [MCEmojiCategory] {
        allEmojiCategories.filter({ showEmptyEmojiCategories || $0.emojis.count > 0 })
    }

    // MARK: - Private Properties

    /// All emoji categories.
    private var allEmojiCategories = [MCEmojiCategory]()

    /// If we are searching or not
    private (set) var searching: Bool = false

    /// The search results
    private var searchResults: [MCEmoji] = []

    /// The current search term
    private var searchTerm: String = ""

    // MARK: - Initializers

    init(unicodeManager: MCUnicodeManagerProtocol = MCUnicodeManager()) {
        allEmojiCategories = unicodeManager.getEmojisForCurrentIOSVersion()
        // Increment usage of each emoji upon selection
        selectedEmoji.bind { emoji in
            emoji?.incrementUsageCount()
        }
    }

    // MARK: - Public Methods

    public func search(_ searchTerm: String) {
        if searchTerm.isEmpty {
            return
        }
        self.searchTerm = searchTerm
        searching = true
        var results: [MCEmoji] = []
        emojiCategories.forEach { category in
            category.emojis.forEach { emoji in
                if emoji.searchKey.lowercased().contains(searchTerm.lowercased()) {
                    results.append(emoji)
                }
            }
        }
        searchResults = results
    }

    public func clearSearch() {
        searching = false
        searchResults = []
    }

    public func isSearching() -> Bool {
        return searching
    }

    public func clearSelectedEmoji() {
        selectedEmoji.value = nil
    }

    public func numberOfSections() -> Int {
        if searching {
            return 1
        }
        return emojiCategories.count
    }

    public func numberOfItems(in section: Int) -> Int {
        if searching {
            return searchResults.count
        }
        return emojiCategories[section].emojis.count
    }

    public func emoji(at indexPath: IndexPath) -> MCEmoji {
        if searching {
            return searchResults[indexPath.row]
        }
        return emojiCategories[indexPath.section].emojis[indexPath.row]
    }

    public func sectionHeaderName(for section: Int) -> String {
        if searching {
            return "Results for: \(searchTerm)".uppercased()
        }
        return emojiCategories[section].categoryName
    }

    public func updateEmojiSkinTone(_ skinToneRawValue: Int, in indexPath: IndexPath) -> MCEmoji {
        if searching {
            searchResults[indexPath.row].set(skinToneRawValue: skinToneRawValue)
            return searchResults[indexPath.row]
        }
        let categoryType: MCEmojiCategoryType = emojiCategories[indexPath.section].type
        let allCategoriesIndex: Int = allEmojiCategories.firstIndex { $0.type == categoryType } ?? 0
        allEmojiCategories[allCategoriesIndex].emojis[indexPath.row].set(skinToneRawValue: skinToneRawValue)
        return allEmojiCategories[allCategoriesIndex].emojis[indexPath.row]
    }
}
