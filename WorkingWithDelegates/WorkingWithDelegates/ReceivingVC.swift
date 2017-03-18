//
//  ReceivingVC.swift
//  WorkingWithDelegates
//
//  Created by MK on 18/03/2017.
//  Copyright © 2017 Muhammad Khan. All rights reserved.
//


import UIKit

class ReceivingVC: UIViewController, DataSentDelegate {
    
    @IBOutlet weak var receivingLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "receiveData" {
            let sendingVC: SendingVC = segue.destination as! SendingVC
            sendingVC.delegate = self
        }
    }
    
    func didUserEnterData(data: String) {
        receivingLable.text = data
    }

}
