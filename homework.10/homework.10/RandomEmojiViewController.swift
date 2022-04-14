//
//  RandomEmojiViewController.swift
//  homework.10
//
//  Created by Stanislau on 01.04.2022.
//

import UIKit

class RandomEmojiViewController: UIViewController {

    @IBOutlet weak var nextViewButton: UIButton!
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var movementArea: UIView!
    
    let emojiArray = ["\u{1F600}", "\u{1F60D}", "\u{1F649}", "\u{270B}", "\u{1F680}",
                      "\u{26BE}","\u{1F349}", "\u{1F3C4}", "\u{1F439}", "\u{1F47D}", "\u{1F4FA}"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Random Emoji"
        emojiLabel.text = emojiArray.randomElement()
    }

    @IBAction func moveAndShow(_ sender: Any) {
        emojiLabel.text = emojiArray.randomElement()
        
        UIView.animate(withDuration: 0.2) { [self] in
            self.emojiLabel.frame.origin = CGPoint(
                x: CGFloat.random(in: self.movementArea.frame.minX...self.movementArea.frame.maxX - emojiLabel.frame.width),
                y: CGFloat.random(in: self.movementArea.frame.minY...self.movementArea.frame.maxY - emojiLabel.frame.height))
        }
    }
}
