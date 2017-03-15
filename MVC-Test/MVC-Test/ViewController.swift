//
//  ViewController.swift
//  MVC-Test
//
//  Created by MK on 12/03/2017.
//  Copyright © 2017 Ab Bachao (Pvt) Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLbl: UILabel!
    
    @IBOutlet weak var editLbl: UITextField!
    
    let person = Person(first: "Hello", last: "World")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLbl.text = person.fullName
    }
 
    @IBAction func btnPressed(_ sender: Any) {
        
        if let txt = editLbl.text {
            person.firstName = txt
            nameLbl.text = person.fullName
        }
        
    }


}

