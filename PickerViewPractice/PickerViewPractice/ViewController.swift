//
//  ViewController.swift
//  PickerViewPractice
//
//  Created by MK on 22/04/2017.
//  Copyright © 2017 Muhammad Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let moodArray = ["Happy", "Sad", "Muadlin", "Ecstatic", "Overjoyed", "Optimistic", "Bewildered", "Cynical", "Giddy", "Indifferent", "Relaxed"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return moodArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return moodArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        var newBGColor: UIColor
        
        switch row {
        case 0,3,4,5,8:
            newBGColor = UIColor.yellow
        case 1,2:
            newBGColor = UIColor.darkGray
        case 6,7,9:
            newBGColor = UIColor.lightGray
        default:
            newBGColor = UIColor.red
        }
        
        self.view.backgroundColor = newBGColor
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

