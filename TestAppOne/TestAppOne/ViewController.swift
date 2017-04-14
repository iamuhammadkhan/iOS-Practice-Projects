//
//  ViewController.swift
//  TestAppOne
//
//  Created by MK on 02/04/2017.
//  Copyright © 2017 Muhammad Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var simpleTextField: UITextField!
    
    @IBOutlet weak var textLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func okBtnPressed(_ sender: Any) {
        textLable.text = "Hello Mr. " + simpleTextField.text!
        self.simpleTextField.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

