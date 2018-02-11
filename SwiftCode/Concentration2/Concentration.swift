//
//  Concentration.swift
//  Concentration
//
//  Created by 巴糖 on 2018/1/16.
//  Copyright © 2018年 巴糖. All rights reserved.
//

import Foundation

/// class 引用类型
class Concentration {
  
  var cards = [Card]()
  
  var indexOfOneAndOnlyFaceUpCard: Int?
  
  
  func chooseCard(at index: Int) {
    if !cards[index].isMatched{
      if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index{
        // check if card match
        if cards[matchIndex].indetifier == cards[index].indetifier {
          cards[matchIndex].isMatched = true
          cards[index].isMatched = true
        }
        cards[index].isFaceUp = true
        indexOfOneAndOnlyFaceUpCard = nil
        
      }else{
        // either no cards or 2 cards are face up
        for flipDownIndex in cards.indices{
          cards[flipDownIndex].isFaceUp = false
        }
        cards[index].isFaceUp = true
        indexOfOneAndOnlyFaceUpCard = index
      }
    }
  }
  
  init(numberOfPairOfCards: Int) {
    
    for _ in 1...numberOfPairOfCards{
      let card = Card()
      cards += [card, card]
    }
    // TODO:- 未完成
  }
}
