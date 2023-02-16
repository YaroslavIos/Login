//
//  WelcomeViewController.swift
//  Login
//
//  Created by Ярослав Любиченко on 13.2.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var userNameLabel: UILabel!
    
    var userName = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = "Hello, \(userName)!"
        view.setBackgroundColor()
//        let gradientBackground = CAGradientLayer()
//        gradientBackground.frame = view.bounds
//        gradientBackground.colors = [UIColor.systemPink.cgColor, UIColor.systemBlue.cgColor]
//        view.layer.insertSublayer(gradientBackground, at: 0)
    }
}

// MARK: - Set background color

extension UIView {
    func setBackgroundColor() {
        let gradientBackground = CAGradientLayer()
        gradientBackground.frame = bounds
        gradientBackground.colors = [
            UIColor.systemPink.cgColor,
            UIColor.systemBlue.cgColor
        ]
        layer.insertSublayer(gradientBackground, at: 0)
    }
}
