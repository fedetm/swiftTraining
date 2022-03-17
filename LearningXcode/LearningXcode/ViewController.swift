//
//  ViewController.swift
//  LearningXcode
//
//  Created by Backup Admin on 1/26/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myButton.setTitleColor(UIColor.white, for: .normal)
        myButton.backgroundColor = UIColor.blue
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        print("The button was pressed")
    }
}

