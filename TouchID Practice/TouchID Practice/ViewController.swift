//
//  ViewController.swift
//  TouchID Practice
//
//  Created by MK on 23/04/2017.
//  Copyright © 2017 Muhammad Khan. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func action(_ sender: Any) {
        
        let context:LAContext = LAContext()
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil) {
            
            context.evaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, localizedReason: "We need your TouchID to verify", reply: { (wasSuccessful, error) in
                if wasSuccessful {
                    print("Authenticated")
                }
                else {
                    print("Please try again")
                }
            })
        }
    }
}

