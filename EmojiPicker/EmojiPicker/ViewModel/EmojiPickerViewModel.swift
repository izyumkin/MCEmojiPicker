//
//  EmojiPickerViewModel.swift
//  EmojiPicker
//
//  Created by Иван Изюмкин on 02.06.2022.
//

import Foundation

final class EmojiPickerViewModel: EmojiPickerViewModelProtocol {
    
    // MARK: - Public Methods
    
    public func sectionHeaderViewModel(for section: Int) -> EmojiSectionHeaderViewModelProtocol {
        return EmojiSectionHeaderModel(section: section)
    }
    
}
