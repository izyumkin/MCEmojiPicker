//
//  Bundle.swift
//  EmojiPicker
//
//  Created by Егор Бадмаев on 13.01.2023.
//

import Foundation

#if !SWIFT_PACKAGE
extension Bundle {
    /// Resources bundle.
    ///
    /// - Note: It was named same as for Swift Package to simplify usage.
    static var module: Bundle {
        let path = Bundle(for: UnicodeManager.self).path(forResource: "EmojiPicker", ofType: "bundle") ?? ""
        return Bundle(path: path) ?? Bundle.main
    }
}
#endif
