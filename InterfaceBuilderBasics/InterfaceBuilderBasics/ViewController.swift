//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by Backup Admin on 1/28/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var newLabel: UILabel!
    @IBAction func changeTitle(_ sender: Any) {
        newLabel.text = "This app rocks!"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

