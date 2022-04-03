//
//  circleViewController.swift
//  homework.10
//
//  Created by Stanislau on 03.04.2022.
//

import UIKit

class circleViewController: UIViewController {
    
    let moveStep: CGFloat = 20
    var toViewBorder: CGFloat = 0

    @IBOutlet weak var circleView: UIView!
    
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var upButton: UIButton!
    @IBOutlet weak var downButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Circle"
        circleView.backgroundColor = .orange
        circleView.layer.cornerRadius = circleView.frame.width / 2
    }
    
    @IBAction func moveLeft(_ sender: Any) {
        
        toViewBorder = circleView.frame.origin.x - view.frame.origin.x
        
        circleView.frame.origin.x > view.frame.origin.x + moveStep ?
        UIView.animate(withDuration: 0.2, animations: { self.circleView.frame.origin.x -= self.moveStep }) :
        UIView.animate(withDuration: 0.2, animations: { self.circleView.frame.origin.x -= self.toViewBorder })
    }
    
    @IBAction func moveUp(_ sender: Any) {
        
        toViewBorder = circleView.frame.origin.y - view.frame.origin.y
        
        circleView.frame.origin.y > view.frame.origin.y + moveStep ?
        UIView.animate(withDuration: 0.2, animations: { self.circleView.frame.origin.y -= self.moveStep }) :
        UIView.animate(withDuration: 0.2, animations: { self.circleView.frame.origin.y -= self.toViewBorder })
    }
    
    @IBAction func moveDown(_ sender: Any) {
        
        toViewBorder = view.frame.maxY - circleView.frame.maxY
        
        circleView.frame.maxY < view.frame.maxY - moveStep ?
        UIView.animate(withDuration: 0.2, animations: { self.circleView.frame.origin.y += self.moveStep }) :
        UIView.animate(withDuration: 0.2, animations: { self.circleView.frame.origin.y += self.toViewBorder })
    }
    
    @IBAction func moveRight(_ sender: Any) {
        
        toViewBorder = view.frame.maxX - circleView.frame.maxX
        
        circleView.frame.maxX < view.frame.maxX - moveStep ?
        UIView.animate(withDuration: 0.2, animations: { self.circleView.frame.origin.x += self.moveStep }) :
        UIView.animate(withDuration: 0.2, animations: { self.circleView.frame.origin.x += self.toViewBorder })
    }
}
