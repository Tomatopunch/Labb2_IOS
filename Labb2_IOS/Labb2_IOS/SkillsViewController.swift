//
//  SkillsViewController.swift
//  Labb2_IOS
//
//  Created by Dennis Andersson on 2019-11-13.
//  Copyright © 2019 Dennis Andersson. All rights reserved.
//

import UIKit

class SkillsViewController: UIViewController {
    
    @IBOutlet weak var Red: UIView!
    
    @IBAction func DismissViewController() {
        dismiss(animated: true, completion: nil)
    }
    
    func moveRight(view: UIView) {
        view.center.x += 300
    }
    
    func moveLeft(view: UIView) {
        view.center.x -= 300
    }
    
    @IBAction func AnimationMoveToRight() {
        let duration: Double = 2.0
        UIView.animate(withDuration: duration, animations: {
            self.moveRight(view: self.Red)
        }) { (finished) in
            if finished {
                UIView.animate(withDuration: duration, animations: {
                     self.moveLeft(view: self.Red)
                })
            }
        }
    }
}
