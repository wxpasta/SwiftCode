//
//  BJCustomUIViewControllerExtension.swift
//
//
//  Created by 许宝吉 on 2018/2/13.
//  Copyright © 2018年 许宝吉. All rights reserved.
//

import UIKit

enum BJSegueName: String {
    case MySegue = "my_segue"
}

extension UIViewController {
    func performSegue(withSegueName segueName: BJSegueName, sender: Any?) {
        performSegue(withIdentifier: segueName.rawValue, sender: sender)
    }
}
