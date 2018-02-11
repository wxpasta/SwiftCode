//
//  EditViewController.swift
//  ShareState
//
//  Created by 巴糖 on 2018/1/7.
//  Copyright © 2018年 巴糖. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {

    
    
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var textField: UITextField!
    
    var modelController: ModelController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let quote = modelController.quote
        textView.text = quote.text
        textField.text = quote.author
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func saveIButton(_ sender: UIButton) {
        let newQuote = Quote(text: textView.text, author: textField.text!)
        modelController.quote = newQuote
        dismiss(animated: true, completion: nil)
        
    }


}
