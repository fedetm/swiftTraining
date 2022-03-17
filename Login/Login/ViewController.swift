//
//  ViewController.swift
//  Login
//
//  Created by Backup Admin on 2/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var forgotPasswordButton: UIButton!
    @IBOutlet var forgotUsernameButton: UIButton!
    @IBOutlet var userName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        if sender == forgotUsernameButton {
            segue.destination.navigationItem.title = "Forgot Username"
            
        } else if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else {
            segue.destination.navigationItem.title = userName.text
        }
    }
    @IBAction func forgotUsernameTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgottenInformation", sender: sender)
    }
    @IBAction func forgotPasswordTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgottenInformation", sender: sender)
    }
    
}

