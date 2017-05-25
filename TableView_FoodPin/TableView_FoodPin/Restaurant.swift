//
//  Restaurant.swift
//  TableView_FoodPin
//
//  Created by LeoKao on 2017/5/24.
//  Copyright © 2017年 LeoKao. All rights reserved.
//

import Foundation

class Restaurant {
    var name = ""
    var type = ""
    var location = ""
    var image = ""
    var isVisited = false
    
    init(name:String, type:String, location:String, image:String, isVisited:Bool) {
        self.name = name
        self.type = type
        self.location = location
        self.image = image
        self.isVisited = isVisited
    }
}

