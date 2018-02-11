//
//  Card.swift
//  Concentration
//
//  Created by 巴糖 on 2018/1/16.
//  Copyright © 2018年 巴糖. All rights reserved.
//

import Foundation

/// struct 值类型
struct Card: Hashable {
    var hashValue: Int{
        return indetifier
    }
    
    static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.indetifier == rhs.indetifier
    }
    
    var isFaceUp = false
    var isMatched = false
    private var indetifier: Int
    
    private static var indetifierFactory = 0
    
    private static func getUniqueIndetifier() -> Int{
        indetifierFactory += 1
        return indetifierFactory
    }
    
    init() {
        self.indetifier = Card.getUniqueIndetifier()
    }
}

