//
//  LoginViewController.swift
//  Login
//
//  Created by Ярослав Любиченко on 13.2.2023.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameField: UITextField!
    @IBOutlet var passwordField: UITextField!
    
    private let userName = "Developer"
    private let password = "123456"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userNameField.text ?? ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
//    MARK: - Setting login button
    
    @IBAction func logInButtonTapped() {
        if userNameField.text == userName && passwordField.text == password {
            
        } else {
            showAlertWindow(withTitle: "Invalid login or password", andMessage: "Please, enter correct login and password")
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let loginVC = segue.destination as? LoginViewController else { return }
        loginVC.userNameField.text = ""
        loginVC.passwordField.text = ""
    }
    
//    MARK: - Setting AlertWindowButton
    
    @IBAction func forgotUserNameButtonTapped() {
        showAlertWindow(withTitle: "Oops!", andMessage: "Your User Name is Developer😉")
    }
    @IBAction func forgotPasswordButtonTapped() {
        showAlertWindow(withTitle: "Oops!", andMessage: "Your password is 123456😉")
    }
}

// MARK: - Setting AlertController

extension LoginViewController {
    private func showAlertWindow(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in self.passwordField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
