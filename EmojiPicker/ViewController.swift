//
//  ViewController.swift
//  EmojiPicker
//
//  Created by Иван Изюмкин on 01.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Private Properties
    
    @IBOutlet private weak var emojiButton: UIButton!
    
    // MARK: - Actions

    @IBAction func selectEmojiAction(_ sender: UIButton) {
        let viewController = EmojiPickerViewController()
        viewController.delegate = self
        viewController.sourceView = sender
//        viewController.arrowDirection = .up
//        viewController.horizontalInset = 20
//        viewController.isDismissAfterChoosing = false
//        viewController.customHeight = 1000
//        viewController.feedBackGeneratorStyle = .soft
        present(viewController, animated: true)
    }
    
}

// MARK: - EmojiPickerDelegate

extension ViewController: EmojiPickerDelegate {
    func didGetEmoji(emoji: String) {
        emojiButton.setTitle(emoji, for: .normal)
    }
}
