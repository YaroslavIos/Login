//
//  WelcomeViewController.swift
//  Login
//
//  Created by Ярослав Любиченко on 13.2.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var userNameLabel: UILabel!
    
    var userName = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = "Hello, \(userName)!"

        let gradientBackground = CAGradientLayer()
        gradientBackground.frame = view.bounds
        gradientBackground.colors = [UIColor.systemPink.cgColor, UIColor.systemBlue.cgColor]
        view.layer.insertSublayer(gradientBackground, at: 0)
    }
}
