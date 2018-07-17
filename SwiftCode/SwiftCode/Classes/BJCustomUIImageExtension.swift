//
//  BJCustomUIImageExtension.swift
//  
//
//  Created by 许宝吉 on 2018/2/13.
//  Copyright © 2018年 许宝吉. All rights reserved.
//

import UIKit

enum BJImageName: String {
    case MyImage = "my_image"
}

extension UIImage {
    convenience init!(imageNamed: BJImageName) {
        self.init(named: imageNamed.rawValue)
    }
}
