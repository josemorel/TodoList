//
//  ViewController.swift
//  newTodoList
//
//  Created by CFPAPP on 22/4/16.
//  Copyright © 2016 CFPAPP. All rights reserved.
//

import UIKit



class ViewController: UIViewController,UITableViewDelegate,TodoNavigationDelegate{

    var todo = [todoModel]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("aaaa")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        print("aaaa2")
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        /*
         if segue.identifier == "PresentAddNoteSegue" {
         if let vc = segue.destinationViewController as? AddNoteNavigationViewController {
         vc.addDelegate = self
         }
         }
         
         */
        
        if segue.identifier == "PresentAddTodoSegue" {
            if let vc = segue.destinationViewController as? addTodoController{
                vc.delegate = self
            }
        }
    }

}

