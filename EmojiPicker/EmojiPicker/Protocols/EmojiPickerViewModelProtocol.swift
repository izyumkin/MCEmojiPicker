//
//  EmojiPickerViewModelProtocol.swift
//  EmojiPicker
//
//  Created by Иван Изюмкин on 02.06.2022.
//

import Foundation

protocol EmojiPickerViewModelProtocol {
    var selectedEmoji: Observable<String> { get set }
    
    func numberOfSections() -> Int
    func numberOfItems(in section: Int) -> Int
    func emoji(at indexPath: IndexPath) -> String
    func sectionHeaderViewModel(for section: Int) -> String
}
