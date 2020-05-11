//
//  SecondViewController.swift
//  shoppingList
//
//  Created by Brandon Kim on 2/14/19.
//  Copyright © 2019 Brandon Kim. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var quantityLabel: UILabel!
    @IBOutlet weak var hobbyLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    
    
    var passedName: Name!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = passedName.name
        quantityLabel.text = "Age:\(passedName.age)"
        hobbyLabel.text = "Hobby: \(passedName.hobby)"
        genderLabel.text = "Gender: \(passedName.gender)"
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func whenButtonPressed(_ sender: Any) {
        
    }
    
    
    
}
