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
    /// The search text used to filter emojis.
    var searchText: Observable<String> { get set }
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
    /// Updates the search text and filters emojis.
    func updateSearchText(_ text: String)
    /// Clears the search text and shows all emojis.
    func clearSearch()
}

/// View model which using in `MCEmojiPickerViewController`.
final class MCEmojiPickerViewModel: MCEmojiPickerViewModelProtocol {
    
    // MARK: - Public Properties
    
    public var selectedEmoji = Observable<MCEmoji?>(value: nil)
    public var selectedEmojiCategoryIndex = Observable<Int>(value: 0)
    public var searchText = Observable<String>(value: "")
    public var showEmptyEmojiCategories = false
    public var emojiCategories: [MCEmojiCategory] {
        let categories = allEmojiCategories.filter({ showEmptyEmojiCategories || $0.emojis.count > 0 })
        guard !searchText.value.isEmpty else { return categories }
        return filterCategoriesBySearchText(categories, searchText: searchText.value)
    }
    
    // MARK: - Private Properties

    /// All emoji categories.
    private var allEmojiCategories = [MCEmojiCategory]()

    /// CLDR keyword lookup: emoji character → array of search keywords.
    /// Loaded once at init from the bundled cldrEmojiKeywords.json resource.
    /// Enables searching by aliases (e.g. "lettuce" → 🥬, "aubergine" → 🍆).
    private var cldrKeywords: [String: [String]] = {
        guard let url = Bundle.module.url(forResource: "cldrEmojiKeywords", withExtension: "json"),
              let data = try? Data(contentsOf: url),
              let decoded = try? JSONDecoder().decode([String: [String]].self, from: data)
        else { return [:] }
        return decoded
    }()

    // MARK: - Initializers

    init(unicodeManager: MCUnicodeManagerProtocol = MCUnicodeManager()) {
        allEmojiCategories = unicodeManager.getEmojisForCurrentIOSVersion()
        // Increment usage of each emoji upon selection
        selectedEmoji.bind { emoji in
            emoji?.incrementUsageCount()
        }
    }
    
    // MARK: - Public Methods
    
    public func clearSelectedEmoji() {
        selectedEmoji.value = nil
    }
    
    public func numberOfSections() -> Int {
        return emojiCategories.count
    }
    
    public func numberOfItems(in section: Int) -> Int {
        return emojiCategories[section].emojis.count
    }
    
    public func emoji(at indexPath: IndexPath) -> MCEmoji {
        return emojiCategories[indexPath.section].emojis[indexPath.row]
    }
    
    public func sectionHeaderName(for section: Int) -> String {
        return emojiCategories[section].categoryName
    }
    
    public func updateEmojiSkinTone(_ skinToneRawValue: Int, in indexPath: IndexPath) -> MCEmoji {
        // Get the emoji from the filtered categories (what the user sees)
        let filteredEmoji = emojiCategories[indexPath.section].emojis[indexPath.row]
        let categoryType: MCEmojiCategoryType = emojiCategories[indexPath.section].type
        let allCategoriesIndex: Int = allEmojiCategories.firstIndex { $0.type == categoryType } ?? 0
        // Find the correct emoji index in the unfiltered array by matching emojiKeys
        guard let correctRowIndex = allEmojiCategories[allCategoriesIndex].emojis.firstIndex(where: { $0.emojiKeys == filteredEmoji.emojiKeys }) else {
            return filteredEmoji
        }
        allEmojiCategories[allCategoriesIndex].emojis[correctRowIndex].set(skinToneRawValue: skinToneRawValue)
        return allEmojiCategories[allCategoriesIndex].emojis[correctRowIndex]
    }

    public func updateSearchText(_ text: String) {
        searchText.value = text
    }

    public func clearSearch() {
        searchText.value = ""
    }

    // MARK: - Private Methods

    private func filterCategoriesBySearchText(_ categories: [MCEmojiCategory], searchText: String) -> [MCEmojiCategory] {
        let lowercasedSearchText = searchText.lowercased()
        return categories.compactMap { category in
            let filteredEmojis = category.emojis.filter { emoji in
                // 1. Match against the camelCase-split primary name (e.g. "leafy green")
                if searchableText(from: emoji.searchKey).contains(lowercasedSearchText) { return true }
                // 2. Match against CLDR synonym keywords (e.g. "lettuce", "aubergine")
                if let keywords = cldrKeywords[emoji.string] {
                    return keywords.contains { $0.contains(lowercasedSearchText) }
                }
                return false
            }
            guard !filteredEmojis.isEmpty else { return nil }
            var filteredCategory = category
            filteredCategory.emojis = filteredEmojis
            return filteredCategory
        }
    }

    /// Converts a camelCase searchKey (e.g. "leafyGreen") into a lowercased
    /// space-separated string (e.g. "leafy green") so individual words are
    /// independently searchable.
    private func searchableText(from camelCase: String) -> String {
        var result = ""
        for char in camelCase {
            if char.isUppercase, !result.isEmpty {
                result += " "
            }
            result += char.lowercased()
        }
        return result
    }
}
