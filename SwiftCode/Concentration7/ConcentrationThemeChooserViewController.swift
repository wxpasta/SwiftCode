//
//  ConcentrationThemeChooserViewController.swift
//  Concentration
//
//  Created by 巴糖 on 2018/1/25.
//  Copyright © 2018年 巴糖. All rights reserved.
//

import UIKit

class ConcentrationThemeChooserViewController: UIViewController {

    let themes = [
        "Sports": "⚽️🏀🏈🎾🏐🏉🎱🏓🥉🥊",
        "Animals": "🐶🐱🐭🐹🐰🦊🐻🐼🐨🐯🦁",
        "Faces": "😀😇😰👏👿🧒🏻🐳🌳🌎"
    ]
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "Choose Theme"{
            if let themeName = (sender as? UIButton)?.currentTitle, let theme = themes[themeName]{
                if let cvc = segue.destination as? ConcentrationViewController{
                    cvc.theme = theme
                }
            }
        }
    }


}
