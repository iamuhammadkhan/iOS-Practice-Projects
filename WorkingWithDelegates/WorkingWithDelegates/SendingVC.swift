//
//  SendingVC.swift
//  WorkingWithDelegates
//
//  Created by MK on 18/03/2017.
//  Copyright © 2017 Muhammad Khan. All rights reserved.
//

import UIKit

protocol DataSentDelegate {
    func didUserEnterData(data: String)
}

class SendingVC: UIViewController {
    
    var delegate: DataSentDelegate?

    @IBOutlet weak var editText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func sendBtn(_ sender: Any) {
        if delegate != nil {
            if editText.text != nil {
                let data = editText.text
                delegate?.didUserEnterData(data: data!)
                dismiss(animated: true, completion: nil)
            }
        }
    }
}

