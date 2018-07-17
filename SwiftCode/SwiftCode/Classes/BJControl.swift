//
//  BJControl.swift
//  TestSwift
//
//  Created by 许宝吉 on 2018/2/12.
//  Copyright © 2018年 许宝吉. All rights reserved.
//

import UIKit

/*
 let button = BJControl()
 button.setTarget(self, action: ViewController.onButtonTap, BJControlEvent: .touchUpInside)
 */

// MARK: - protocol
protocol BJTargetAction {
    func performAction()
}

// MARK: - struct
struct BJTargetActionWrapper<T: AnyObject> : BJTargetAction {
    weak var target: T?
    let action: (T) -> () -> ()
    
    func performAction() -> () {
        if let t = target {
            action(t)()
        }
    }
}

// MARK: - enum
enum BJControlEvent {
    case touchUpInside
    case valueChanged
    // ...
}

// MARK: - class
class BJControl {
    var actions = [BJControlEvent: BJTargetAction]()
    
    func setTarget<T: AnyObject>(_ target: T, action: @escaping (T) -> () -> (), BJControlEvent: BJControlEvent) {
        actions[BJControlEvent] = BJTargetActionWrapper(target: target, action: action)
    }
    
    func removeTargetForBJControlEvent(BJControlEvent: BJControlEvent) {
        actions[BJControlEvent] = nil
    }
    
    func performActionForBJControlEvent(BJControlEvent: BJControlEvent) {
        actions[BJControlEvent]?.performAction()
    }
}
