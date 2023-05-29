// The MIT License (MIT)
//
// Copyright © 2023 Ivan Izyumkin
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import SwiftUI

@available(iOS 13.0, *)
struct MCEmojiPickerRepresentableController: UIViewControllerRepresentable {
    
    // MARK: - Public Properties
    
    @Binding var isPresented: Bool
    
    // FIXME: - Add settings for the picker
    
    // MARK: - Public Methods
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIViewController(context: Context) -> UIViewController {
        UIViewController()
    }
    
    func updateUIViewController(_ representableController: UIViewController, context: Context) {
        switch isPresented {
        case true:
            let controller = MCEmojiPickerViewController()
            controller.delegate = context.coordinator
            controller.sourceView = representableController.view
            context.coordinator.addPickerDismissingObserver()
            representableController.present(controller, animated: true)
        case false:
            representableController.presentedViewController?.dismiss(animated: true)
        }
    }
}

// MARK: - Coordinator

@available(iOS 13.0, *)
extension MCEmojiPickerRepresentableController {
    public class Coordinator: NSObject, MCEmojiPickerDelegate {
        
        private let sourceController: MCEmojiPickerRepresentableController
        
        init(_ sourceController: MCEmojiPickerRepresentableController) {
            self.sourceController = sourceController
        }
        
        public func addPickerDismissingObserver() {
            NotificationCenter.default.addObserver(self, selector: #selector(pickerDismissingAction), name: .MCEmojiPickerDidDisappear, object: nil)
        }
        
        public func didGetEmoji(emoji: String) {
            
        }
        
        @objc public func pickerDismissingAction() {
            NotificationCenter.default.removeObserver(self, name: .MCEmojiPickerDidDisappear, object: nil)
            sourceController.isPresented = false
        }
    }
}
