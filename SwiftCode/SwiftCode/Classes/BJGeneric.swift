//
//  BJGeneric.swift
//  TestSwift
//
//  Created by 许宝吉 on 2018/2/27.
//  Copyright © 2018年 许宝吉. All rights reserved.
//

import Foundation

protocol BJBaseState {
    associatedtype BJStateType
    func add(_ item: BJStateType)
}

struct states<T>: BJBaseState {
    func add(_ item: T) {
        //...
    }
}


func stateFilter<FromState:BJBaseState, ToState:BJBaseState>(_ from:FromState, _ to:ToState)
    where FromState.BJStateType == ToState.BJStateType {
    //...
}

