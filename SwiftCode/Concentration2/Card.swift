//
//  Card.swift
//  Concentration
//
//  Created by 巴糖 on 2018/1/16.
//  Copyright © 2018年 巴糖. All rights reserved.
//

import Foundation

/// struct 值类型
struct Card {
  var isFaceUp = false
  var isMatched = false
  var indetifier: Int
  
  static var indetifierFactory = 0
  
  static func getUniqueIndetifier() -> Int{
    indetifierFactory += 1
    return indetifierFactory
  }
  
  init() {
    self.indetifier = Card.getUniqueIndetifier()
  }
}
