//
//  ViewController.swift
//  MeAppV2
//
//  Created by Даниил Никулин on 23.10.2020.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
        
    private let userData = UserData.catchDataOfUser()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard
            segue.identifier == "user" else {
            return
        }
        let userView = segue.destination as! UITabBarController
        let userVC = userView.viewControllers?.first as! UserViewController
        userVC.name = userTextField.text ?? ""
    }

    @IBAction func passButtonTapped() {
        alertViewIsOpen(title: "Wrong password", message: "Your pass is \(userData.password)")
    }
    
    @IBAction func nameButtonTapped() {
        alertViewIsOpen(title: "Wrong name", message: "Your name is \(userData.name)")
    }
    
    @IBAction func letsGoButtonTapped() {
        guard
            userTextField.text == userData.name,
            passwordTextField.text == userData.password
            else {
            alertViewIsOpen(title: "Wrong Data", message: "Check your data", textField: passwordTextField)
            return
        }
        performSegue(withIdentifier: "user", sender: nil)
    }
    
    @IBAction func backSegue(segue: UIStoryboardSegue) {
        userTextField.text = nil
        passwordTextField.text = nil
    }
    
}

extension ViewController {
    private func alertViewIsOpen(title: String, message: String, textField: UITextField? = nil) {
        let alertView = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let retryButton = UIAlertAction(title: "Retry", style: .default) { (UIAlertAction) in
            textField?.text = nil
        }
        present(alertView, animated: true)
        alertView.addAction(retryButton)
    }
}

extension ViewController {
     override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
     }
}
    
//extension ViewController: UITextFieldDelegate {
//    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        if userTextField.resignFirstResponder() {
//            passwordTextField.becomeFirstResponder()
//        } else {
//            letsGoButtonTapped()
//        }
//        return true
//    }
//}

