//
//  UserViewController.swift
//  MeAppV2
//
//  Created by Даниил Никулин on 23.10.2020.
//

import UIKit

class UserViewController: UIViewController {

    @IBOutlet weak var userLabel: UILabel!
    
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userLabel.text = "Welcome, \(name)!"
    }
    

}
