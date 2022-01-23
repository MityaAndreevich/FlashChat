//
//  LoginViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    

    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e.localizedDescription)
                    self.sendingAlertMessage(title: "Oops...", message: "\(e.localizedDescription)")
                } else {
                    self.performSegue(withIdentifier: "LoginToChat", sender: self)
                }
            }
        }
    }
    //MARK: - Private Methods
    private func sendingAlertMessage(title: String, message: String) {
        let alertMessage = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "Try again", style: .default)
        alertMessage.addAction(okAction)
        let registerAction = UIAlertAction(title: "Register", style: .default) { action in
            self.performSegue(withIdentifier: "BackToRegister", sender: self)
        }
        alertMessage.addAction(registerAction)
        present(alertMessage, animated: true)
    }
}
