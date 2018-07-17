//
//  BJDebug.swift
//  TestSwift
//
//  Created by 许宝吉 on 2018/2/27.
//  Copyright © 2018年 许宝吉. All rights reserved.
//

import Foundation



// pragma MARK: Generics(泛型)
public func printArray<T>(arr: [T]) {
    _ = arr.map {
        print("\($0)")
    }
}

// TODO: fff
