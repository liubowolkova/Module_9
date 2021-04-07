//
//  Task2Controller.swift
//  Module_9
//
//  Created by Любовь Волкова on 30.01.2021.
//

import UIKit

class Task2Controller: UIViewController {
    @IBOutlet var inputFields: [UITextField]!
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet var labels: [UILabel]!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func setText(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            labels[0].text = inputFields[0].text
        case 1:
            labels[1].text = inputFields[1].text
        default:
            break
        }
    }
}
