//
//  ViewController.swift
//  StackImplementation
//
//  Created by Fnu, Rohit on 7/2/17.
//  Copyright © 2017 Fnu, Rohit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var stack = Stack()
    
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var outputTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
    }

    @IBAction func pushButtonTapped(_ sender: Any) {
        stack.push(elemet: inputTextField.text!)
        outputTextView.text = String(describing: stack)
        emptyTextFieldAndRemoveKeyBoard()
    }

    @IBAction func peekButtonTapped(_ sender: Any) {
        outputTextView.text = String(describing: stack.peek()!)
        emptyTextFieldAndRemoveKeyBoard()
    }
    
    @IBAction func popButtonTapped(_ sender: Any) {
        outputTextView.text = String(describing: stack.pop()!)
        emptyTextFieldAndRemoveKeyBoard()
    }
    
    func emptyTextFieldAndRemoveKeyBoard() {
        inputTextField.text = ""
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
}
