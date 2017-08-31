//
//  ViewController.swift
//  ChineseZodiac
//
//  Created by AngieMIta on 2017/8/25.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var yearOfBirth: UITextField!
    
    @IBOutlet weak var image: UIImageView!
    
    let offset = 2008 % 12
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        yearOfBirth.resignFirstResponder()
    }

    
    @IBAction func okTapped(_ sender: UIButton) {
        
        yearOfBirth.resignFirstResponder()
        
        if let year = Int(yearOfBirth.text!){
            let imageName = (year - offset) % 12
            image.image = UIImage(named:"\(imageName)")
        }
        
        
        
    }
}

