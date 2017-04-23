//
//  ViewController.swift
//  Coffee Cafe App
//
//  Created by MK on 23/04/2017.
//  Copyright © 2017 Muhammad Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var quantity = 0

    @IBOutlet weak var quantityLbl: UILabel!
    @IBOutlet weak var messageLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func plusBtn(_ sender: Any) {
        
        if quantity >= 0 {
         
            quantity += 1
            quantityLbl.text = String(quantity)
            
        }
        
    }
    
    @IBAction func minusBtn(_ sender: Any) {
        
        if quantity >= 1 {
            
            quantity -= 1
            quantityLbl.text = String(quantity)
            
        }
        
        
    }
    
    @IBAction func orderBtn(_ sender: Any) {
        
        if quantity >= 1 {
            
            if quantity == 1 {
                
                priceLbl.text = "Total Bill $\(quantity*5)"
                
                messageLbl.text = "Your order for \(quantity) cup of coffee will be available in next 5 minutes. Thank you!"
                
                quantity = 0
                quantityLbl.text = String(quantity)
                
            }
            else {
                
                priceLbl.text = "Total Bill $\(quantity*5)"
                
                messageLbl.text = "Your order for \(quantity) cups of coffee will be available in next 5 minutes. Thank you!"
                
                quantity = 0
                quantityLbl.text = String(quantity)
                
            }
            
        }
        
    }
    
}

