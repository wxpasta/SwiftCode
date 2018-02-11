//
//  PlayingCarkDeck.swift
//  PlayingCard
//
//  Created by 巴糖 on 2018/1/17.
//  Copyright © 2018年 巴糖. All rights reserved.
//

import Foundation

struct PlayingCarkDeck {
    
    private(set) var card = [PlayingCard]()
    
    
    init() {
        for suit in PlayingCard.Suit.all{
            for rank in PlayingCard.Rank.all{
                card.append(PlayingCard(suit: suit, rank: rank))
            }
        }
    }
    
    mutating func draw() -> PlayingCard? {
        if card.count > 0 {
            return card.remove(at: card.count.arc4random)
            } else {
            return nil
        }
    }
}

extension Int{
    var arc4random: IntegerLiteralType {
        if self > 0{
            return Int(arc4random_uniform(UInt32(self)))
        }else if self < 0{
            return -Int(arc4random_uniform(UInt32(abs(self))))
        }else{
            return 0
        }
    }
}
