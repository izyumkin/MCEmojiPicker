//
//  UnicodeManager.swift
//  EmojiPicker
//
//  Created by Иван Изюмкин on 07.06.2022.
//

import Foundation
import UIKit.UIDevice

final class UnicodeManager: UnicodeManagerProtocol {
    
    // MARK: - Private Methods
    
    private var currentVersion: Float {
        return (UIDevice.current.systemVersion as NSString).floatValue
    }
    
    // MARK: - Public Methods
    
    public func getEmojisForCurrentIOSVersion() -> [EmojiCategory] {
        switch currentVersion {
        case 12.1...13.1:
            return unicode11
        case 13.2...14.1:
            return unicode12
        case 14.2...14.4:
            return unicode13
        case 14.5...15.3:
            return unicode13v1
        case 15.4...:
            return unicode14
        default:
            return unicode5
        }
    }
    
    public func getEmojiCategoryTitle(for type: EmojiCategoryType) -> String {
        // Localization file name.
        let localizationTableName = "EmojiPickerLocalizable"
        switch type {
        case .people:
            return NSLocalizedString("emotionsAndPeople", tableName: localizationTableName, comment: "")
        case .nature:
            return NSLocalizedString("animalsAndNature", tableName: localizationTableName, comment: "")
        case .foodAndDrink:
            return NSLocalizedString("foodAndDrinks", tableName: localizationTableName, comment: "")
        case .activity:
            return NSLocalizedString("activities", tableName: localizationTableName, comment: "")
        case .travelAndPlaces:
            return NSLocalizedString("travellingAndPlaces", tableName: localizationTableName, comment: "")
        case .objects:
            return NSLocalizedString("items", tableName: localizationTableName, comment: "")
        case .symbols:
            return NSLocalizedString("symbols", tableName: localizationTableName, comment: "")
        case .flags:
            return NSLocalizedString("flags", tableName: localizationTableName, comment: "")
        }
    }
}
