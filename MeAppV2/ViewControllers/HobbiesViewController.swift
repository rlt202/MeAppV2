//
//  HobbiesViewController.swift
//  MeAppV2
//
//  Created by Даниил Никулин on 25.10.2020.
//

import UIKit

class HobbiesViewController: UIViewController {

    @IBOutlet var hobbieButtons: [UIButton]!
   
    @IBOutlet weak var hobbiesTextView: UITextView!
    
    private let hobbiesDataforButtons = HobbiesData.catchDataOfHobbies()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupForHobbiesButtons()
        hobbiesTextView.isUserInteractionEnabled = false
    }
    
    private func setupForHobbiesButtons() {
        for button in hobbieButtons {
            button.layer.cornerRadius = 5
            button.layer.borderWidth = 1
        }
    }
    

    @IBAction func anyButtonPressed(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            hobbiesTextView.text = hobbiesDataforButtons.auto
        case 1:
            hobbiesTextView.text = hobbiesDataforButtons.comp
        case 2:
            hobbiesTextView.text = hobbiesDataforButtons.other
        default:
            break
        }
    }
    
}
