//
//  Item.swift
//  shoppingList
//
//  Created by Brandon Kim on 2/12/19.
//  Copyright © 2019 Brandon Kim. All rights reserved.
//

import Foundation
class Item{
    var name:String
    var quantity:Int
    //var price:Int
    init(name:String) {
        self.name = name
        self.quantity = 1
    }
    init(name:String, quantity:Int) {
        self.name = name
        self.quantity = quantity
    }
    
    
    
    
}
