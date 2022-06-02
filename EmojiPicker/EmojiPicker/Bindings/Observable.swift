//
//  Observable.swift
//  EmojiPicker
//
//  Created by Иван Изюмкин on 02.06.2022.
//

import Foundation

class Observable<T> {
    typealias Listener = (T) -> Void
    
    public var value: T {
        didSet {
            listener?(value)
        }
    }
    
    private var listener: Listener?
    
    init(value: T) {
        self.value = value
    }
    
    public func bind(_ listener: @escaping Listener) {
        self.listener = listener
    }
}
