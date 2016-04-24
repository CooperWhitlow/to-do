//
//  SecondViewController.swift
//  CoopsToDo
//
//  Created by Cooper Whitlow on 4/8/16.
//  Copyright © 2016 Cooper Whitlow. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController, UITextFieldDelegate {

 
    @IBOutlet weak var taskField: UITextField!
    
 
    @IBAction func addButton(sender: AnyObject) {
        
        if let newItem = taskField.text {
            
            taskArray.append(newItem)
            
            taskField.text = ""
            
            taskField.resignFirstResponder()
            
        }
    }
    
    //add this to dismiss keyboard when tapping out of the highlighted text field
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    //add this to dismiss keyboard on return
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        if let newItem = taskField.text {
            
            taskArray.append(newItem)
            
            taskField.text = ""
        }
        
        taskField.resignFirstResponder()
        
        return true
    }

}

