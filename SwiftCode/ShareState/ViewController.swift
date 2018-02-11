//
//  ViewController.swift
//  ShareState
//
//  Created by 巴糖 on 2018/1/7.
//  Copyright © 2018年 巴糖. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quoteTextLabel: UILabel!
    @IBOutlet weak var quoteAuthorLabel: UILabel!
    var modelController: ModelController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        

        let quote = modelController.quote
        quoteTextLabel.text = quote.text
        quoteAuthorLabel.text = quote.author
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let editVC = segue.destination as? EditViewController{
            editVC.modelController = modelController
        }
    }
}

