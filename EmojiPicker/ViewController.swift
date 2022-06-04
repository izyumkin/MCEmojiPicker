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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var yPosition = 300
        for index in 0...7 {
            let iconView = EmojiCategoryView(categoryIndex: index)
            iconView.frame = CGRect(x: 0, y: yPosition, width: 30, height: 30)
            iconView.center.x = view.frame.width / 2
            view.addSubview(iconView)
            yPosition += 35
        }
    }
    
    // MARK: - Actions

    @IBAction func selectEmojiAction(_ sender: UIButton) {
        let viewController = EmojiPickerViewController()
        viewController.delegate = self
        viewController.preferredContentSize = CGSize(width: 400, height: 500)
        viewController.modalPresentationStyle = .popover
        if let presentationController = viewController.presentationController {
            presentationController.delegate = self
        }
        self.present(viewController, animated: true)
        if let pop = viewController.popoverPresentationController {
            pop.permittedArrowDirections = .up
            pop.sourceView = sender
            pop.sourceRect = CGRect(
                x: 0,
                y: 0,
                width: sender.bounds.width,
                height: sender.bounds.height
            )
        }
    }
    
}

// MARK: - EmojiPickerDelegate

extension ViewController: EmojiPickerDelegate {
    func didGetEmoji(emoji: String) {
        emojiButton.setTitle(emoji, for: .normal)
    }
}


// MARK: - UIAdaptivePresentationControllerDelegate

extension ViewController: UIAdaptivePresentationControllerDelegate {
    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
        return .none
    }
}
