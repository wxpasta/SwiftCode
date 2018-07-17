//
//  BJLinkedList.swift
//  TestSwift
//
//  Created by 许宝吉 on 2018/2/13.
//  Copyright © 2018年 许宝吉. All rights reserved.
//

import Foundation

indirect enum BJLinkedList<Element: Comparable> {
    case empty
    case node(Element, BJLinkedList<Element>)
    
    
    func linkedListByRemovingElement(element: Element)
        -> BJLinkedList<Element> {
            guard case let .node(value, next) = self else {
                return .empty
            }
            return value == element ?
                next : BJLinkedList.node(value, next.linkedListByRemovingElement(element: element))
    }
}
/*
 let linkedList = BJLinkedList.node(1, .node(2, .node(3, .node(4, .empty))))
 // 单项链表：1 -> 2 -> 3 -> 4
 
 let result = linkedList.linkedListByRemovingElement(element: 2)
 // 1 -> 3 -> 4
 */
