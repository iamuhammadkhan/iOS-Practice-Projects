//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by MK on 22/04/2017.
//  Copyright © 2017 Muhammad Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var activePlayer = 1 //Cross
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func action(_ sender: Any) {
        
        if (gameState[(sender as AnyObject).tag-1] == 0) {
            
            gameState[(sender as AnyObject).tag-1] = activePlayer
            
            if (activePlayer == 1) {
                
                (sender as AnyObject).setImage(UIImage(named: "Cross.png"), for: UIControlState())
                activePlayer = 2
                
            }
            else {
                
                (sender as AnyObject).setImage(UIImage(named: "Nought.png"), for: UIControlState())
                activePlayer = 1
                
            }
            
        }
        
    }
    
}
