//
//  addTodo.swift
//  newTodoList
//
//  Created by CFPAPP on 22/4/16.
//  Copyright © 2016 CFPAPP. All rights reserved.
//

import UIKit

class addTodoController: UIViewController,UITableViewDelegate {

    var delegate : TodoNavigationDelegate!
    var todo : todoModel = todoModel()
    
    @IBOutlet weak var descriptionTxt: UITextView!
    
   
    @IBOutlet weak var titleTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        borderAdd(descriptionTxt)
     
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
    
    func borderAdd( contrl:UITextView)  {
        let borderColor : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        contrl.layer.borderWidth = 0.5
        contrl.layer.borderColor = borderColor.CGColor
        contrl.layer.cornerRadius = 5.0


    }
  // MARK: - Actions
    
    @IBAction func saveAction(sender: AnyObject) {
        todo.titulo = titleTxt.text
        todo.descrip = descriptionTxt.text
        todo.estatus = 0
        
        dismissViewControllerAnimated(true){
            if let delegate = self.delegate{
                delegate.didCreateNote(self.todo)
                
            }
        }
    }
 
    @IBAction func cancelAction(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
   
    
}
