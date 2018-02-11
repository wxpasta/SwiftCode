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
    
    private(set) var cards = [Card]()
    
    private var indexOfOneAndOnlyFaceUpCard: Int?{
        get{
            var foundIndex: Int?
            for index in cards.indices {
                if cards[index].isFaceUp{
                    if foundIndex == nil{
                        foundIndex = index
                    }else{
                        return nil
                    }
                }
            }
            return foundIndex
        }
        set {
            for index in cards.indices {
                cards[index].isFaceUp = (index == newValue)
            }
        }
    }
    
    func chooseCard(at index: Int) {
        assert(cards.indices.contains(index), "Concentration.chooseCard(at: \(index)): chosen index not in the cards")
        if !cards[index].isMatched{
            if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index{
                // check if card match
                if cards[matchIndex].indetifier == cards[index].indetifier {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFaceUp = true
            }else{
                // either no cards or 2 cards are face up
                indexOfOneAndOnlyFaceUpCard = index
            }
        }
    }
    
    init(numberOfPairOfCards: Int) {
        assert(numberOfPairOfCards > 0 , "init(at: \(numberOfPairOfCards)): you must have at least one pair of cards")
        for _ in 1...numberOfPairOfCards{
            let card = Card()
            cards += [card, card]
        }
        // TODO:- Shuffle the cards!
    }
}


