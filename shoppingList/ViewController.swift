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
var Names:[Name] = [Name(name: "Bob", hobby: "Coding", age: 20, gender: "Male"), Name(name: "Jones", hobby: "Running", age: 17, gender: "Male"), Name(name: "Lucy", hobby: "Drawing", age: 4096, gender: "Female")]

class ViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var newItemTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    var passedProfile: Name!
    
    var currentView = ViewController.self
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
        
    
    }
    
    
    
//    if let newItemName = newItemTextField.text, newItemName != ""{
//    let newItem = Item(name: newItemName)
//    items.append(newItem)
//    tableView.reloadData()
    
    func sortNames(){
        
        var alphabet = ["A":1 , "B": 2, "C": 3, "D": 4, "E": 5, "F": 6, "G": 7, "H": 8, "I": 9, "J": 10, "K": 11, "L": 12, "M": 13, "N": 14, "O": 15, "P": 16, "Q": 17, "R": 18, "S": 19, "T": 20, "U": 21, "V": 22, "W": 23, "X": 24, "Y": 25, "Z": 26,]
    
        for i in 0...Names.count {
            var num = 0
            var num2 = 1
           for i in Names {
             
             var nextName = Names[num2]
             var firstCharacter = Names[num].name.first!
            var firstChar = firstCharacter.uppercased()
            var secondChar = nextName.name.first!.uppercased()
            
            if alphabet[firstChar]! > alphabet[secondChar]! {
                var fre = Names[num]
                Names[num] = Names[num2]
                Names[num2] = fre
            }
            
            if alphabet[firstChar]! == alphabet[secondChar]! {
                var bool = false
                var ar = Array(Names[num].name)
                var ar2 = Array(Names[num2].name)
                while bool == false {
        
                ar.remove(at: 0)
                ar2.remove(at: 0)
                
                var er = String(ar)
                var er2 = String(ar2)
                
                firstChar = er.first!.uppercased()
                secondChar = er2.first!.uppercased()
                
            if alphabet[firstChar]! > alphabet[secondChar]! {
                var fre = Names[num]
                Names[num] = Names[num2]
                Names[num2] = fre
                bool = false
            } else {
                bool = true
            }
    
        }
            }
            
             num += 1
             
            if num2 < Names.count - 1{
                num2 += 1
            }
        }
            
        }
    }

    @IBAction func refreshButton(_ sender: Any) {
        sortNames()
        tableView.reloadData()
    }
    
    
    
    
    
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
    
    
    // +++++++++++++++++++++++++++++
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        
         return true
        
    
    }
    
    
   
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            Names.remove(at:indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
            
            reloadInputViews()
            tableView.reloadData()
        }
        
    }
  
    
    
    //++++++++++++++++++++++++++++++
}

