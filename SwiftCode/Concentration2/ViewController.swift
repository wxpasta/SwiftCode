//
//  ViewController.swift
//  Concentration
//
//  Created by 巴糖 on 2018/1/15.
//  Copyright © 2018年 巴糖. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  lazy var game = Concentration(numberOfPairOfCards: (cardButtons.count + 1) / 2)
  
  var flipCount = 0{
    didSet{
      flipCountLabel.text = "Flips: \(flipCount)"
    }
  }

  @IBOutlet weak var flipCountLabel: UILabel!
  
  @IBOutlet var cardButtons: [UIButton]!
  
  @IBAction func touchCard(_ sender: UIButton) {
    print("agh! a ghost!")
    flipCount += 1
    if let cardNumber = cardButtons.firstIndex(of: sender){
      game.chooseCard(at: cardNumber)
      updateViewFromModel()
      print("cardNumber: \(cardNumber)")
    }else{
      print("chosen card was not is cardButtons")
    }
    
  }
  
  func updateViewFromModel() {
    for index in cardButtons.indices {
      let button = cardButtons[index]
      let card = game.cards[index]
      if card.isFaceUp{
        button.setTitle(emoji(for: card), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
      }else{
        button.setTitle("", for: .normal)
        button.backgroundColor = card.isMatched ?  #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 0) : #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
      }
    }
  }
  
  var emojiChoices: Array<String> = ["👻", "🎃", "🐓", "🧀", "🐶", "💰", "🔑", "💟"]
  
  var emoj = [Int : String]()
  
  
  func emoji(for card : Card) -> String {
    if emoj[card.indetifier] == nil, emojiChoices.count > 0{
      let randomIndex = Int(arc4random_uniform(UInt32(emojiChoices.count)))
      emoj[card.indetifier] = emojiChoices.remove(at: randomIndex)
    }
    return emoj[card.indetifier] ?? "?"
  }
  
  func flipCard(withEmoji emoji: String, on button: UIButton)  {
    print("flipCard(withEmoji: \(emoji) )")
    if button.currentTitle == emoji {
      button.setTitle("", for: .normal)
      button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
    }else{
      button.setTitle(emoji, for: .normal)
      button.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
    }
  }
  
}

