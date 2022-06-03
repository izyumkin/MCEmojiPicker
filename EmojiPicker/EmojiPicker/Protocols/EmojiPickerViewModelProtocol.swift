//
//  EmojiPickerViewModelProtocol.swift
//  EmojiPicker
//
//  Created by Иван Изюмкин on 02.06.2022.
//

import Foundation

/**
 Protocol for the ViewModel which using in EmojiPickerViewController.
 */
protocol EmojiPickerViewModelProtocol {
    /**
     The observed variable that is responsible for the choice of emoji.
     */
    var selectedEmoji: Observable<String> { get set }
    
    /**
     The method returns the number of categories with emojis.
     */
    func numberOfSections() -> Int
    /**
     The method returns the number of emojis in the target section.
     */
    func numberOfItems(in section: Int) -> Int
    /**
     This method is responsible for getting the emoji for the target indexPath.
     */
    func emoji(at indexPath: IndexPath) -> String
    /**
     The method is responsible for getting the localized name of the emoji section
     */
    func sectionHeaderViewModel(for section: Int) -> String
}
