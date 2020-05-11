//
//  Name.swift
//  shoppingList
//
//  Created by Brandon Kim on 5/11/20.
//  Copyright © 2020 Brandon Kim. All rights reserved.
//

import Foundation
class Name{
    var name:String
    var hobby:String
    var age: Int
    var gender:String
    
    
    init(name:String, hobby:String, age:Int, gender:String) {
        self.name = name
        self.hobby = hobby
        self.age = age
        self.gender = gender
    }
    
    init(name:String, age:Int) {
        self.name = name
        self.age = age
        self.hobby = "Unknown"
        self.gender = "Unspecified"
    }
    
    
    
}
