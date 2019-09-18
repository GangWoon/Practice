//
//  ViewController.swift
//  textField
//
//  Created by Cloud on 18/09/2019.
//  Copyright © 2019 Cloud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    @IBOutlet var gestureRecognizer: UITapGestureRecognizer! {
        didSet {
            gestureRecognizer.delegate = self
        }
    }
    @IBOutlet weak var textField: UITextField! {
        didSet {
            textField.delegate = self
            initNotificationCenter()
        }
    }
    let notificationCenter: NotificationCenter = NotificationCenter.default
    

    // MARK: - Handlers
    func initNotificationCenter() {
        notificationCenter.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        notificationCenter.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
    }
    
    @objc
    func keyboardWillShow(_ sender: NotificationCenter) {
        view.frame.origin.y = -300
    }
    
    @objc
    func keyboardWillHide(_ sender: NotificationCenter) {
        view.frame.origin.y = 0
    }
}

// MARK: - TextField Extension
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

// MARK: - GestureRecognizer Extension
extension ViewController: UIGestureRecognizerDelegate {
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        view.endEditing(true)
        return true
    }
}
