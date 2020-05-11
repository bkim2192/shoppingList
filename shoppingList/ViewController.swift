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
    var Names:[Name] = []
    var currentView = ViewController.self
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        let person1 = Name(name: "Bob", hobby: "Coding", age: 20, gender: "Male")
        let person2 = Name(name: "Jones", hobby: "Running", age: 17, gender: "Male")
        let person3 = Name(name: "Lucy", hobby: "Drawing", age: 4096, gender: "Female")
        
        
        
        Names.append(person1)
        Names.append(person2)
        Names.append(person3)
        
        var one = UserDefaults.standard.data(forKey: "person")
        
        Names.append()
        
    }
    
    
    
//    if let newItemName = newItemTextField.text, newItemName != ""{
//    let newItem = Item(name: newItemName)
//    items.append(newItem)
//    tableView.reloadData()
    
    
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Names.count
        // adds the number of items in the array, which is how many rows we would need for the cells.
        //self explanatory,
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")! but can crash
        //you can spell it wrong
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "myCell"){
            // takes the index of the cell and matches it with the index of the array, places name in correct cell number
            //[] is for the index number which would be the same as the array, the .name is from the Item class, which gets the string of the item.
            let personName = Names[indexPath.row].name
            let personAge = Names[indexPath.row].age
            cell.detailTextLabel?.textColor = UIColor.white
            cell.textLabel?.textColor = UIColor.white
            cell.detailTextLabel?.backgroundColor = UIColor.blue
            cell.textLabel?.backgroundColor = UIColor.blue
            cell.textLabel?.text = personName
            cell.detailTextLabel?.text = "Age:\(personAge)"
            return cell
        } else {
            return UITableViewCell()
            // returns blank cell
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow{
            let nvc = segue.destination as! SecondViewController
            let currentItem = Names[indexPath.row]
            nvc.passedName = currentItem
            
            
        }
    }
    // +++++++++++++++++++++++++++++
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        
         return true
        
    
    }
    
    
   
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
  
    
    
    //++++++++++++++++++++++++++++++
}

