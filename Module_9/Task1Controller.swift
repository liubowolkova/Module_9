//
//  Task1Controller.swift
//  Module_9
//
//  Created by Любовь Волкова on 30.01.2021.
//

import UIKit

class Task1Controller: UIViewController {
    @IBOutlet var mainView: UIView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var contentViewHeight: NSLayoutConstraint!
    @IBOutlet weak var buttonSet1Height: NSLayoutConstraint!
    @IBOutlet weak var buttonSet2Height: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let screenSize = UIScreen.main.bounds
        self.view.frame = CGRect(x: 0, y: 0, width: screenSize.width, height: screenSize.height + 84.0)
        contentViewHeight.constant = screenSize.height + 84.0
        buttonSet1Height.constant = screenSize.height / 2
        buttonSet2Height.constant = screenSize.height / 2
    }
}
