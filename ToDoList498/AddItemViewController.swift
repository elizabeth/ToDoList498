//
//  AddItemViewController.swift
//  ToDoList498
//
//  Created by Elizabeth on 10/20/16.
//  Copyright © 2016 Elizabeth. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController {
    
    @IBOutlet weak var taskTitle: UITextField!
    @IBOutlet weak var taskDescription: UITextView!
    @IBOutlet weak var addButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.addButton.layer.borderWidth = 5.0
        self.addButton.layer.borderColor = UIColor.green.cgColor
        self.addButton.layer.cornerRadius = 5.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addItem(_ sender: AnyObject) {
        if self.taskTitle.text == nil || (self.taskTitle.text?.isEmpty)! {
            Animation.grow(view: self.taskTitle)
            Animation.flashBG(color: UIColor.red.withAlphaComponent(0.25), view: self.taskTitle)
            return
        }
        
        let tasks = Tasks.shared
        tasks.add(task: Task(title: self.taskTitle.text!, taskDescription: self.taskDescription.text))
        self.dismiss(animated: true, completion: nil)
    }
}
