//
//  TwoSquareViewController.swift
//  homework.10
//
//  Created by Stanislau on 02.04.2022.
//

import UIKit

class TwoSquareViewController: UIViewController {

    @IBOutlet weak var firstSquare: UIView!
    @IBOutlet weak var secondSquare: UIView!
    @IBOutlet weak var nextViewButton: UIButton!
    @IBOutlet weak var movementArea: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Two Square"
        firstSquare.layer.cornerRadius = 15
        secondSquare.layer.cornerRadius = 15
    }
    
    @IBAction func moveSquare(_ sender: Any) {
        
        repeat {
            UIView.animate(withDuration: 0.2) { [self] in self.firstSquare.frame.origin = CGPoint(
                x: CGFloat.random(in: self.movementArea.frame.minX...movementArea.frame.maxX - self.firstSquare.frame.height),
                y: CGFloat.random(in: movementArea.frame.minY...movementArea.frame.maxY - self.firstSquare.frame.height))
            }
            
            UIView.animate(withDuration: 0.2) { [self] in self.secondSquare.frame.origin = CGPoint(
                x: CGFloat.random(in: self.movementArea.frame.minX...movementArea.frame.maxX - self.secondSquare.frame.height),
                y: CGFloat.random(in: movementArea.frame.minY...movementArea.frame.maxY - self.secondSquare.frame.height))
            }
        } while firstSquare.frame.intersects(secondSquare.frame)
    }
}
