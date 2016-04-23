//
//  addTodo.swift
//  newTodoList
//
//  Created by CFPAPP on 22/4/16.
//  Copyright © 2016 CFPAPP. All rights reserved.
//

import UIKit

class addTodoController: UIViewController {

   
    @IBOutlet weak var descriptionTxt: UITextView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
       let borderColor : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        descriptionTxt.layer.borderWidth = 0.5
        descriptionTxt.layer.borderColor = borderColor.CGColor
        descriptionTxt.layer.cornerRadius = 5.0
    }
    
}
