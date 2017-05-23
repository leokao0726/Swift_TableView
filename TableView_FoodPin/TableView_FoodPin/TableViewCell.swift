//
//  TableViewCell.swift
//  TableView_FoodPin
//
//  Created by LeoKao on 2017/5/23.
//  Copyright © 2017年 LeoKao. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myNameLabel: UILabel!
    @IBOutlet weak var myLocationLabel: UILabel!
    @IBOutlet weak var myTypeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
