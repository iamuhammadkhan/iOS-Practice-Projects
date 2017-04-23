//
//  ViewController.swift
//  Calculator App
//
//  Created by MK on 22/04/2017.
//  Copyright © 2017 Muhammad Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen:Double = 0
    var previousNumber:Double = 0
    var performMath = false
    var operation = 0

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func numbers(_ sender: UIButton) {
        
        if performMath == true {
            
            label.text = String(sender.tag)
            numberOnScreen = Double(label.text!)!
            performMath = false
        }
        else {
            
            label.text = label.text! + String(sender.tag)
            numberOnScreen = Double(label.text!)!
            
        }
    }

    @IBAction func buttons(_ sender: UIButton) {
        
        if label.text != "" && sender.tag != 10 && sender.tag != 15 {
            
            previousNumber = Double(label.text!)!
            
            if sender.tag == 11 {
                label.text = "/"
            }
            else if sender.tag == 12 {
                label.text = "x"
            }
            else if sender.tag == 13 {
                label.text = "-"
            }
            else if sender.tag == 14 {
                label.text = "+"
            }
            operation = sender.tag
            performMath = true
        }
        
        else if sender.tag == 15 {
            
            if operation == 11 {
                label.text = String(previousNumber / numberOnScreen)
            }
            else if operation == 12 {
                label.text = String(previousNumber * numberOnScreen)
            }
            else if operation == 13 {
                label.text = String(previousNumber - numberOnScreen)
            }
            else if operation == 14 {
                label.text = String(previousNumber + numberOnScreen)
            }
        }
        else if sender.tag == 10 {
            label.text = ""
            previousNumber = 0
            numberOnScreen = 0
            operation = 0
            
        }
    }
}

