//
//  Bundle+Extension.swift
//  MCEmojiPicker
//
//  Created by Иван Изюмкин on 25.12.2022.
//

import Foundation

#if !SPM
extension Bundle {
    /// Localization bundle.
    static var module: Bundle {
        let path = Bundle(for: MCUnicodeManager.self).path(
            forResource: "MCEmojiPicker",
            ofType: "bundle"
        ) ?? ""
        return Bundle(path: path) ?? Bundle.main
    }
}
#endif
