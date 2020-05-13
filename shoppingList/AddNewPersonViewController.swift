//
//  AddNewPersonViewController.swift
//  shoppingList
//
//  Created by Brandon Kim on 5/11/20.
//  Copyright © 2020 Brandon Kim. All rights reserved.
//

import UIKit

class AddNewPersonViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var hobbyTextField: UITextField!
    @IBOutlet weak var genderTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   
     
    @IBAction func whenAddButtonPressed(_ sender: Any) {
        
       
        
        if let name = nameTextField.text, let age = Int(ageTextField.text!) {
            
            var person = Name(name: name, age: age)
            
            Names.append(person)
            
            
        } else if let hobby = hobbyTextField.text, let gender = genderTextField.text, let name = nameTextField.text, let age = Int(ageTextField.text!) {
            var person = Name(name: name, hobby: hobby, age: age, gender: gender)
            Names.append(person)
            
            
        }
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Here to
       
        
      
        //Here
        
        
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
