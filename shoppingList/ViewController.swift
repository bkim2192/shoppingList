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
        tableView.dataSource = self
        
        
        let itemOne = Item(name: "Milk")
        let itemTwo = Item(name: "Blueberries")
        items = [itemOne,itemTwo]
        let itemThree = Item(name: "Crackers")
        let itemFour = Item(name: "Chocolate Milk")
        let itemFive = Item(name: "Cake")
        items.append(itemThree)
        items.append(itemFive)
        items.append(itemFour)
        
    }
    
    @IBAction func newItemButtonPressed(_ sender: Any) {
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
        // adds the number of items in the array, which is how many rows we would need for the cells.
        //self explanatory,
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")! but can crash
        //you can spell it wrong
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "myCell"){
            // takes the index of the cell and matches it with the index of the array, places name in correct cell number
            //[] is for the index number which would be the same as the array, the name would make it a string
            let itemName = items[indexPath.row].name
            cell.textLabel?.text = itemName
            return cell
        } else {
            return UITableViewCell()
            // returns blank cell
        }
        
    }

}

