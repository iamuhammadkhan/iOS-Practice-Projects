//
//  SecondViewController.swift
//  ToDo App
//
//  Created by MK on 22/04/2017.
//  Copyright © 2017 Muhammad Khan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func addItem(_ sender: Any) {
        
        if (input.text != "") {
            
            list.append(input.text!)
            input.text = ""
            self.input.resignFirstResponder()
            
        }
        
    }

}

