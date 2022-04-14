//
//  ViewController.swift
//  homework.10
//
//  Created by Stanislau on 01.04.2022.
//

import UIKit

class randomEmojiViewController: UIViewController {

    @IBOutlet weak var showButton: UIButton!
    @IBOutlet weak var nextViewButton: UIButton!
    @IBOutlet weak var emojiLabel: UILabel!
    
    let emojiArray = ["\u{1F600}", "\u{1F60D}", "\u{1F649}", "\u{270B}", "\u{1F680}",
                      "\u{26BE}","\u{1F349}", "\u{1F3C4}", "\u{1F439}", "\u{1F47D}", "\u{1F4FA}"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Random Emoji"
        emojiLabel.text = emojiArray.randomElement()
    }

    @IBAction func moveAndShow(_ sender: Any) {
        emojiLabel.text = emojiArray.randomElement()
        
        UIView.animate(withDuration: 0.2, animations: { self.emojiLabel.frame.origin = CGPoint(x: Int.random(in: 20...Int(self.view.frame.maxX - self.emojiLabel.frame.width)), y: Int.random(in: Int(self.nextViewButton.frame.maxY)...Int(self.showButton.frame.minY - self.emojiLabel.frame.height))) })
    }
}
