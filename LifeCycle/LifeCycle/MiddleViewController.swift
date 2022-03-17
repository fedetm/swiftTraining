//
//  MiddleViewController.swift
//  LifeCycle
//
//  Created by Backup Admin on 2/15/22.
//

import UIKit

class MiddleViewController: UIViewController {

    @IBOutlet var label: UILabel!
    var eventNumber: Int = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        print("MiddleViewController - View Did Load")
        addEvent(from: "viewDidLoad")
    }
    
    func addEvent(from: String) {
        if let existingText = label.text {
            label.text = "\(existingText)\nEvent number \(eventNumber) was \(from)"
            eventNumber += 1
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("MiddleViewController - View Will Appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("MiddleViewController - View Did Appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("MiddleViewController - View Will Disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("MiddleViewController - View Did Disappear")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
