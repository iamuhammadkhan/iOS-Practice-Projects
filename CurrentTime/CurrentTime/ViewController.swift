//
//  ViewController.swift
//  CurrentTime
//
//  Created by MK on 20/04/2017.
//  Copyright © 2017 Muhammad Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func refreshBtn(_ sender: Any) {
        
        let now = NSDate()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm a"
        
        timeLbl.text = formatter.string(from: now as Date)
        
    }
    

}

