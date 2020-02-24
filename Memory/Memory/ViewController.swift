//
//  ViewController.swift
//  Memory
//
//  Created by Scott on 2/24/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
// Updates the flip count label each time a card is flipped or clicked.
    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
// Label displaying the flip count.
    @IBOutlet weak var flipCountLabel: UILabel!
    
// A collection of buttons that represent the card.
    @IBOutlet var cardButtons: [UIButton]!
    
// A collection of emojis that can be displayed on a card.
    var emojiChoices = ["👻", "🎃", "👻", "🎃"]

// Accesses the emoji collection when a button/card is clicked and updates the flip count label.
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.firstIndex(of: sender) {
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print("chosen card was not in cardButtons")
        }
    }
    
// Returns a view of a background color when a button/card is clicked, either a solid color or the emoji.
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }

}


