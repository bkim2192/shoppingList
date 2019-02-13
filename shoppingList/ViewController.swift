//
//  ViewController.swift
//  shoppingList
//
//  Created by Brandon Kim on 2/8/19.
//  Copyright © 2019 Brandon Kim. All rights reserved.
//
//mdakmdkamkda
//COmment 2
//hahaha1
import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var newItemTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    var items:[Item] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let itemOne = Item(name: "Milk")
        let itemTwo = Item(name: "Blueberries")
        items = [itemOne,itemTwo]
        
        tableView.dataSource = self
    }
    
    @IBAction func newItemButtonPressed(_ sender: Any) {
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
        //self explanatory,
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")! but can crash
        //you can spell it wrong
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "myCell"){
            cell.textLabel?.text = "Hello"
            return cell
        } else {
            return UITableViewCell()
            // returns blank cell
        }
        
    }

}

