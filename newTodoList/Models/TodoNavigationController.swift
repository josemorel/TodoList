//
//  TodoNavigationController.swift
//  newTodoList
//
//  Created by CFPAPP on 23/4/16.
//  Copyright © 2016 CFPAPP. All rights reserved.
//

import UIKit
protocol TodoNavigationDelegate {
    func didCreateNote(todo : todoModel)
}
class TodoNavigationController: UINavigationController {
    var addDelegate: TodoNavigationDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        if let vc = self.topViewController as? addNewTodoController{
            vc.delegate = addDelegate
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
