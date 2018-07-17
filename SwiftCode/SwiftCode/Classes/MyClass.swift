//
//  MyClass.swift
//  TestSwift
//
//  Created by 许宝吉 on 2018/3/2.
//  Copyright © 2018年 许宝吉. All rights reserved.
//

import Foundation

// MyClass.swift
class MyClass {
}

// MyClassExtension.swift
private var key: Void?

extension MyClass {
    var title: String? {
        get {
            return objc_getAssociatedObject(self, &key) as? String
        }
        
        set {
            objc_setAssociatedObject(self,
                                     &key, newValue,
                                     .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    var navTitle: String {
        return "navTitle"
    }
}
