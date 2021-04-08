//
//  Task3Controller.swift
//  Module_9
//
//  Created by Любовь Волкова on 08.04.2021.
//

import UIKit

class Task3Controller: UIViewController {
    let buttonState = ["Развернуть", "Свернуть"]
    var isShown = true
    var oneLineHeight: CGFloat = 0
    var fiveLinesHeight: CGFloat = 0
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var labelHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var button: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.oneLineHeight = self.calcLinesHeight(numOfLines: 5)
        self.fiveLinesHeight = self.calcLinesHeight(numOfLines: 1)
    }
    
    @IBAction func onHideShow(_ sender: UIButton) {
        if isShown {
            self.setButtonName(name: self.buttonState[0])
            self.setLabelNumberOfLines(number: 1)
            self.setLabelHeightConstraint(value: self.oneLineHeight)
            
        } else {
            self.setButtonName(name: self.buttonState[1])
            self.setLabelNumberOfLines(number: 5)
            self.setLabelHeightConstraint(value: self.fiveLinesHeight)
        }
        isShown = !isShown
    }
    
    func setButtonName(name: String) {
        self.button.setTitle(name, for: .normal)
    }
    
    func setLabelNumberOfLines(number: Int) {
        self.label.numberOfLines = number
    }
    
    func setLabelHeightConstraint(value: CGFloat) {
        self.labelHeightConstraint.constant = value
    }
    
    func calcLinesHeight(numOfLines: CGFloat) -> CGFloat {
        return numOfLines == 1 ? self.label.bounds.size.height : self.label.bounds.size.height / numOfLines
    }
}
