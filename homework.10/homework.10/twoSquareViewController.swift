//
//  twoSquareViewController.swift
//  homework.10
//
//  Created by Stanislau on 02.04.2022.
//

import UIKit

class twoSquareViewController: UIViewController {

    @IBOutlet weak var firstSquare: UIView!
    @IBOutlet weak var secondSquare: UIView!
    @IBOutlet weak var moveButton: UIButton!
    @IBOutlet weak var nextViewButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Two Square"
        firstSquare.layer.cornerRadius = 15
        secondSquare.layer.cornerRadius = 15
        
    }
    
    @IBAction func moveSquare(_ sender: Any) {
        
        repeat {
            UIView.animate(withDuration: 0.2, animations: { self.firstSquare.frame.origin = CGPoint(x: Int.random(in: 20...Int(self.view.frame.maxX - self.firstSquare.frame.height)), y: Int.random(in: Int(self.nextViewButton.frame.maxY + 20)...Int(self.moveButton.frame.minY - self.firstSquare.frame.height - 20))) })
            
            UIView.animate(withDuration: 0.2, animations: { self.secondSquare.frame.origin = CGPoint(x: Int.random(in: 20...Int(self.view.frame.maxX - self.secondSquare.frame.height)), y: Int.random(in: Int(self.nextViewButton.frame.maxY + 20)...Int(self.moveButton.frame.minY - self.secondSquare.frame.height - 20))) })
        }
        
        while firstSquare.frame.intersects(secondSquare.frame) == true
                
    }
}
