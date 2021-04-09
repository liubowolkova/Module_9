//
//  Task1_4Controller.swift
//  Module_9
//
//  Created by Любовь Волкова on 09.04.2021.
//

import UIKit

class Task1_4Controller: UIViewController {
    @IBOutlet weak var stackViewHeightConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let screenSize = UIScreen.main.bounds
        let halfOfScreenSize = screenSize.height / 2
        self.changeConstraint(self.stackViewHeightConstraint, halfOfScreenSize)
    }
    
    func changeConstraint(_ constraint: NSLayoutConstraint, _ value: CGFloat) {
        constraint.constant = value
    }
}
