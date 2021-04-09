//
//  Task1_3Controller.swift
//  Module_9
//
//  Created by Любовь Волкова on 09.04.2021.
//

import UIKit

class Task1_3Controller: UIViewController {
    @IBOutlet weak var button1HeigthConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let screenSize = UIScreen.main.bounds
        let halfOfScreenSize = screenSize.height / 2
        let oneButtonHeight = halfOfScreenSize / 3
        self.changeConstraint(self.button1HeigthConstraint, oneButtonHeight)
    }
    
    func changeConstraint(_ constraint: NSLayoutConstraint, _ value: CGFloat) {
        constraint.constant = value
    }
}
