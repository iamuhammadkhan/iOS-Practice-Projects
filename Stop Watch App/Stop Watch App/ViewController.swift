//
//  ViewController.swift
//  Stop Watch App
//
//  Created by MK on 23/04/2017.
//  Copyright © 2017 Muhammad Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var time = 0
    
    var timer = Timer()
    
    @IBOutlet weak var timeLbl: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func action () {
        time += 1
        timeLbl.text = String(time)
    }

    @IBAction func start(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)
    }
    
    @IBAction func pause(_ sender: Any) {
        
        timer.invalidate()
    }

    @IBAction func reset(_ sender: Any) {
        
        timer.invalidate()
        time = 0
        timeLbl.text = String(time)
    }
}

