//
//  DetailTableViewCell.swift
//  TableView_FoodPin
//
//  Created by LeoKao on 2017/5/25.
//  Copyright © 2017年 LeoKao. All rights reserved.
//

import UIKit

class DetailTableViewCell: UITableViewCell {
    @IBOutlet weak var restaurantField: UILabel!

    @IBOutlet weak var restaurantValue: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
