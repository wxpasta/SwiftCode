//
//  BJFunc.swift
//  TestSwift
//
//  Created by 许宝吉 on 2018/2/13.
//  Copyright © 2018年 许宝吉. All rights reserved.
//

import Foundation


func synchronized(lock: AnyObject, closure: () -> ()) {
    objc_sync_enter(lock)
    closure()
    objc_sync_exit(lock)
}


