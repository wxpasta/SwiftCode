//
//  ViewController.swift
//  Calculator
//
//  Created by AngieMIta on 2017/8/10.
//  Copyright © 2017年 AngieMIta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var userIsTheMiddleOfTyping: Bool = false
    
    
    /// Digit 数字
    @IBAction func touchDigit(_ sender: UIButton) {
        // print("touchDigit was called")
        let digit = sender.currentTitle!
        // print("\(digit) was touched")
        if userIsTheMiddleOfTyping {
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        }else{
            display.text = digit
            userIsTheMiddleOfTyping = true
        }
        
        
    }
    
    var displayValue: Double{
        get{
            return Double(display.text!)!
        }
        set{
            display.text = String(newValue)
        }
    }
    
    private var brain = CalculatorBrain()
    
    
    // control + i 自动对齐
    @IBAction func performOperation(_ sender: UIButton) {
        
        if userIsTheMiddleOfTyping {
            brain.setOperation(displayValue)
            userIsTheMiddleOfTyping = false
        }
        
        if let mathematicalSymbol = sender.currentTitle{
            brain.performOperation(mathematicalSymbol)
        }
        
        if let result = brain.result {
            displayValue = result
        }
        
    }
    
}

extension ViewController{
    func drawHorizontalLine(from startX: Double,to endX: Double, using color: UIColor) {
        
    }
}


