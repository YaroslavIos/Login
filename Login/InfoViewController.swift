//
//  InformationViewController.swift
//  Login
//
//  Created by Ярослав Любиченко on 17.2.2023.
//

import UIKit

final class InfoViewController: UIViewController {

    @IBOutlet var image: UIImageView!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var occupationLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var homeTownLabel: UILabel!
    @IBOutlet var countryLabel: UILabel!
    
    var surname = ""
    var occupation = ""
    var age = ""
    var homeTown = ""
    var country = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        surnameLabel.text = surname
        occupationLabel.text = occupation
        ageLabel.text = "Age: \(age)"
        homeTownLabel.text = "Home town: \(homeTown)"
        countryLabel.text = "Country: \(country)"
    }
}
