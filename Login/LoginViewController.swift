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
    
    private let userName = user.login
    private let password = user.password
    
    override func viewDidLoad() {
        userNameField.text = user.login
        passwordField.text = user.password
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.userName = user.person.name + " " + user.person.surname
            } else if let infoVC = viewController as? InfoViewController {
                infoVC.surname = user.person.name + " " + user.person.surname
                infoVC.occupation = user.person.position
                infoVC.age = user.person.age
                infoVC.homeTown = user.person.homeTown
                infoVC.country = user.person.country
            } else if let hobbyVC = viewController as? HobbyViewController {
                hobbyVC.view.backgroundColor = UIColor.systemBrown
                hobbyVC.hobby = user.person.hobby.sport
            }
        }
        }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
//    MARK: - Setting login button
    
    @IBAction func logInButtonTapped() {
        guard userNameField.text == user.login && passwordField.text == user.password else {
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
