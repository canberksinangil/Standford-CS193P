//
//  ViewController.swift
//  Lecture1
//
//  Created by Canberk Sinangil on 23/06/2019.
//  Copyright © 2019 Canberk Sinangil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flips : \(flipCount)"
        }
    }
    
    override func viewDidLoad() {
        super .viewDidLoad()
        testButton.addTarget(self, action: #selector(touchCard), for: .touchUpInside)
    }
    
    var emojiChoices = ["😇","♥️","😝"]
    
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBOutlet weak var testButton: UIButton!
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBAction func touchCard(_ sender: UIButton) {
        countFlip()
        if let cardNumber = cardButtons.firstIndex(of: sender){
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print("FATAL ERROR")
        }
        
    }
    
    @IBAction func touchSecondCard(_ sender: UIButton) {
        countFlip()
        if let cardNumber = cardButtons.firstIndex(of: sender){
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print("FATAL ERROR")
        }
    }
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
            
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            button.titleLabel?.font = .systemFont(ofSize: 48)
        }
        
    }
    
    func countFlip(){
        flipCount += 1
    }
    
    
}

