//
//  CustomTableViewCell.swift
//  StreachableTabeleViewHeader
//
//  Created by 巴糖 on 2018/1/7.
//  Copyright © 2018年 巴糖. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
