//
//  EmojiPickerViewModelProtocol.swift
//  EmojiPicker
//
//  Created by Иван Изюмкин on 02.06.2022.
//

import Foundation

protocol EmojiPickerViewModelProtocol {
    func sectionHeaderViewModel(for section: Int) -> EmojiSectionHeaderViewModelProtocol
}
