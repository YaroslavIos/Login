//
//  LoginViewController.swift
//  Login
//
//  Created by Ярослав Любиченко on 13.2.2023.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet var userNameField: UITextField!
    @IBOutlet var passwordField: UITextField!
    
    private let userName = User()
    private let password = User()
    
    override func viewDidLoad() {
        userNameField.text = userName.login
        passwordField.text = password.password
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userNameField.text ?? ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
//    MARK: - Setting login button
    
    @IBAction func logInButtonTapped() {
        guard userNameField.text == userName.login && passwordField.text == password.password else {
        showAlertWindow(
            withTitle: "Invalid login or password",
            andMessage: "Please, enter correct login and password"
        )
            return
     }
        performSegue(withIdentifier: "openWelcomeVC", sender: nil)
}
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameField.text = ""
        passwordField.text = ""
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
    private func showAlertWindow(
        withTitle title: String,
        andMessage message: String
    )
    {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "Ok", style: .default) {
            _ in self.passwordField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
