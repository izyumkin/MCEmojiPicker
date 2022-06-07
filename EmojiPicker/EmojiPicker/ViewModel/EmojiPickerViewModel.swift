//
//  EmojiPickerViewModel.swift
//  EmojiPicker
//
//  Created by Иван Изюмкин on 02.06.2022.
//

import Foundation

/**
 ViewModel which using in EmojiPickerViewController.
 */
final class EmojiPickerViewModel: EmojiPickerViewModelProtocol {
    
    // MARK: - Public Properties
    
    public var selectedEmoji = Observable<String>(value: "")
    public var selectedEmojiCategoryIndex = Observable<Int>(value: 0)
    
    // MARK: - Private Properties
    
    /**
     All emoji categories.
     */
    private var emojiCategories = [EmojiCategory]()
    
    // MARK: - Initializers
    
    init(unicodeManager: UnicodeManagerProtocol = UnicodeManager()) {
        emojiCategories = unicodeManager.getEmojisForCurrentIOSVersion()
    }
    
    // MARK: - Public Methods
    
    public func numberOfSections() -> Int {
        return emojiCategories.count
    }
    
    public func numberOfItems(in section: Int) -> Int {
        return emojiCategories[section].emojis.count
    }
    
    public func emoji(at indexPath: IndexPath) -> String {
        return emojiCategories[indexPath.section].emojis[indexPath.row].emoji()
    }
    
    public func sectionHeaderViewModel(for section: Int) -> String {
        return emojiCategories[section].categoryName
    }
}
