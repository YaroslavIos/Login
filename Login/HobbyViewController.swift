//
//  HobbyViewController.swift
//  Login
//
//  Created by Ярослав Любиченко on 17.2.2023.
//

import UIKit

final class HobbyViewController: UIViewController {

    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet var hobbyLabel: UILabel!
    
    var hobby = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hobbyLabel.text = hobby
    }
    
    @IBAction func segmentedControlAction() {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            hobbyLabel.text = user.person.hobby.sport
        case 1:
            hobbyLabel.text = user.person.hobby.movies
        default :
            hobbyLabel.text = user.person.hobby.music
        }
    }
    
}
