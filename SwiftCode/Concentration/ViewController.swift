//
//  ViewController.swift
//  Concentration
//
//  Created by 巴糖 on 2018/1/15.
//  Copyright © 2018年 巴糖. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var flipCount = 0{
    didSet{
      flipCountLabel.text = "Flips: \(flipCount)"
    }
  }

  @IBOutlet weak var flipCountLabel: UILabel!
  
  @IBOutlet var cardButtons: [UIButton]!
  
  var emjoChoices: Array<String> = ["👻","🎃","👻","🎃"]
  
  
  
  @IBAction func touchCard(_ sender: UIButton) {
    print("agh! a ghost!")
    flipCount += 1
    if let cardNumber = cardButtons.firstIndex(of: sender){
      flipCard(withEmoji: emjoChoices[cardNumber], on: sender)
      print("cardNumber: \(cardNumber)")
    }else{
      print("chosen card was not is cardButtons")
    }
    
  }
  
}

extension ViewController{
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

