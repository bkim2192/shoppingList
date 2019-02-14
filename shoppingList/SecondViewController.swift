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
    var passedItem: Item!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = passedItem.name
        quantityLabel.text = "Quantity:\(passedItem.quantity)"
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
