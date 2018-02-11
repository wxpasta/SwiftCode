//
//  MenuTableViewCell.swift
//  SimpleSlideMenu
//
//  Created by 巴糖 on 2018/1/15.
//  Copyright © 2018年 巴糖. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

    @IBOutlet weak var labelText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
