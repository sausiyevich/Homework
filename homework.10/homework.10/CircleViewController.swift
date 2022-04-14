//
//  CircleViewController.swift
//  homework.10
//
//  Created by Stanislau on 03.04.2022.
//

import UIKit

class CircleViewController: UIViewController {
    
    @IBOutlet weak var circleView: UIView!
    @IBOutlet weak var movementArea: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Circle"
        circleView.backgroundColor = .orange
        circleView.layer.cornerRadius = circleView.frame.width / 2
    }
    
    @IBAction func moveLeft(_ sender: Any) {
        
        let moveStep: CGFloat = 20
        var toViewBorder: CGFloat = 0
        
        toViewBorder = circleView.frame.origin.x - movementArea.frame.origin.x
        
        circleView.frame.origin.x > movementArea.frame.origin.x + moveStep ?
        UIView.animate(withDuration: 0.2, animations: { self.circleView.frame.origin.x -= moveStep }) :
        UIView.animate(withDuration: 0.2, animations: { self.circleView.frame.origin.x -= toViewBorder })
    }
    
    @IBAction func moveUp(_ sender: Any) {
        
        let moveStep: CGFloat = 20
        var toViewBorder: CGFloat = 0
        
        toViewBorder = circleView.frame.origin.y - movementArea.frame.origin.y
        
        circleView.frame.origin.y > movementArea.frame.origin.y + moveStep ?
        UIView.animate(withDuration: 0.2, animations: { self.circleView.frame.origin.y -= moveStep }) :
        UIView.animate(withDuration: 0.2, animations: { self.circleView.frame.origin.y -= toViewBorder })
    }
    
    @IBAction func moveDown(_ sender: Any) {
        
        let moveStep: CGFloat = 20
        var toViewBorder: CGFloat = 0
        
        toViewBorder = movementArea.frame.maxY - circleView.frame.maxY
        
        circleView.frame.maxY < movementArea.frame.maxY - moveStep ?
        UIView.animate(withDuration: 0.2, animations: { self.circleView.frame.origin.y += moveStep }) :
        UIView.animate(withDuration: 0.2, animations: { self.circleView.frame.origin.y += toViewBorder })
    }
    
    @IBAction func moveRight(_ sender: Any) {
        
        let moveStep: CGFloat = 20
        var toViewBorder: CGFloat = 0
        
        toViewBorder = movementArea.frame.maxX - circleView.frame.maxX
        
        circleView.frame.maxX < movementArea.frame.maxX - moveStep ?
        UIView.animate(withDuration: 0.2, animations: { self.circleView.frame.origin.x += moveStep }) :
        UIView.animate(withDuration: 0.2, animations: { self.circleView.frame.origin.x += toViewBorder })
    }
}
