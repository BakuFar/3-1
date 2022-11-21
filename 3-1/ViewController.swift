//
//  ViewController.swift
//  3-1
//
//  Created by Фархат Сталбек уулу on 17/11/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var emptyLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func loginBotton(_ sender: UIButton) {
        var loginCharacterCount = 0
        var passwordCharacterCount = 0
        for _ in textFieldName.text! {
            loginCharacterCount += 1
        }
        for _ in textFieldPassword.text! {
            passwordCharacterCount += 1
        }
        if loginCharacterCount <= 3 || passwordCharacterCount <= 3 {
            emptyLabel.text = "не верно"
            emptyLabel.textColor = .red
        }else {
            emptyLabel.text = "успешно"
            emptyLabel.textColor = .green
        }
    }
}

