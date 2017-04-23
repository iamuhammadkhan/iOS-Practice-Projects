//
//  ViewController.swift
//  Court Counter App
//
//  Created by MK on 23/04/2017.
//  Copyright © 2017 Muhammad Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var teamACounter = 0
    var teamBCounter = 0

    @IBOutlet weak var teamA: UILabel!
    @IBOutlet weak var teamB: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func teamA3Points(_ sender: Any) {
        
        teamACounter += 3
        teamA.text = String(teamACounter)
    }
    
    @IBAction func teamA2Points(_ sender: Any) {
        
        teamACounter += 2
        teamA.text = String(teamACounter)
    }

    @IBAction func teamAFreeThrow(_ sender: Any) {
        
        teamACounter += 1
        teamA.text = String(teamACounter)
    }
    
    @IBAction func teamB3Points(_ sender: Any) {
        
        teamBCounter += 3
        teamB.text = String(teamBCounter)
    }
    
    @IBAction func teamB2Points(_ sender: Any) {
        
        teamBCounter += 2
        teamB.text = String(teamBCounter)
    }
    
    @IBAction func teamBFreeThrow(_ sender: Any) {
        
        teamBCounter += 1
        teamB.text = String(teamBCounter)
    }
    
    @IBAction func reset(_ sender: Any) {
        
        teamACounter = 0
        teamA.text = String(teamACounter)
        
        teamBCounter = 0
        teamB.text = String(teamBCounter)
    }
}
