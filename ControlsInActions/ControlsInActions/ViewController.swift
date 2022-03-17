//
//  ViewController.swift
//  ControlsInActions
//
//  Created by Backup Admin on 2/3/22.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet var slider: UISlider!
    @IBOutlet var toggle: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func actionButton(_ sender: Any) {
        print("Button was tapped")
        
        if toggle.isOn {
            print("The switch is on!")
        } else {
            print("The switch is off.")
        }
        
        print("The slider is set to \(slider.value)")
    }
    

    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn {
            print("Switch is On!")
        } else {
            print("Switch is Off.")
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
    }
    
    @IBAction func returnKeyTapped(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    @IBAction func textChanged(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
    }
}

