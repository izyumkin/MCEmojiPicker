//
//  EmojiSectionHeaderViewModel.swift
//  EmojiPicker
//
//  Created by Иван Изюмкин on 02.06.2022.
//

import Foundation

/// The class is responsible for preparing the emoji categories name
final class EmojiSectionHeaderModel: EmojiSectionHeaderViewModelProtocol {
    
    // MARK: - Public Properties
    
    /// Category name for the target section
    public var sectionTitle: String {
        return categoriesTitles[section]
    }
    
    // MARK: - Private Properties
    
    /// Localization file name
    private let localizationTableName = "EmojiPickerLocalizable"
    
    /// Localized names for all emoji categories
    private lazy var categoriesTitles: [String] = [
        NSLocalizedString("emotionsAndPeople", tableName: localizationTableName, comment: ""),
        NSLocalizedString("animalsAndNature", tableName: localizationTableName, comment: ""),
        NSLocalizedString("foodAndDrinks", tableName: localizationTableName, comment: ""),
        NSLocalizedString("activities", tableName: localizationTableName, comment: ""),
        NSLocalizedString("travellingAndPlaces", tableName: localizationTableName, comment: ""),
        NSLocalizedString("items", tableName: localizationTableName, comment: ""),
        NSLocalizedString("symbols", tableName: localizationTableName, comment: ""),
        NSLocalizedString("flags", tableName: localizationTableName, comment: "")
    ]

    /// Target section
    private var section: Int
    
    // MARK: - Initializers
    
    init(section: Int) {
        self.section = section
    }
    
}
