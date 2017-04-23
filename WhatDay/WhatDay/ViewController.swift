//
//  ViewController.swift
//  WhatDay
//
//  Created by MK on 22/04/2017.
//  Copyright © 2017 Muhammad Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func displayDay(_ sender: Any) {
        
        let chosenDate = self.datePicker.date
        
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE"
        
        let day = formatter.string(from: chosenDate)
        
        let result = "That was a \(day)"
        
        let myAlert = UIAlertController(title: result, message: nil, preferredStyle: UIAlertControllerStyle.alert)
        
        myAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        self.present(myAlert, animated: true, completion: nil)
        
    }

}

