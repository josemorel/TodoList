//
//  addNewTodoController.swift
//  newTodoList
//
//  Created by CFPAPP on 23/4/16.
//  Copyright © 2016 CFPAPP. All rights reserved.
//

import UIKit

class addNewTodoController: UIViewController {
    
    var delegate : TodoNavigationDelegate!
    var todo : todoModel = todoModel()
    
    @IBOutlet weak var tituloTxt: UITextField!
    
    @IBAction func saveAction(sender: AnyObject) {
    }
    
    @IBAction func cancelAction(sender: AnyObject) {
    }
}
