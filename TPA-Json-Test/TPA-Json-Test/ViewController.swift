//
//  ViewController.swift
//  TPA-Json-Test
//
//  Created by MK on 14/04/2017.
//  Copyright © 2017 Muhammad Khan. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let TPA_URL = "http://android.grand-sol.net/MA-Test/include/json_file.php"
    
    var student = [AnyObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        Alamofire.request(TPA_URL).responseJSON { response in
            
            let result = response.result
            if let dict = result.value as? Dictionary<String,AnyObject>{
                if let innerDict = dict["result"]{
                    self.student = innerDict as! [AnyObject]
                    self.tableView.reloadData()
                }
            }
        }
        
    }
    
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return student.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CustomTableViewCell
        
        let stdName = student[indexPath.row]["name"]
        cell?.nameLbl.text = stdName as? String
        
        let stdID = student[indexPath.row]["id"]
        cell?.idLbl.text = stdID as? String
        
        let stdClass = student[indexPath.row]["class"]
        cell?.classLbl.text = stdClass as? String
        
        let stdDOB = student[indexPath.row]["dob"]
        cell?.dobLbl.text = stdDOB as? String
        
        let stdRemarks = student[indexPath.row]["remarks"]
        cell?.remarksLbl.text = stdRemarks as? String
        
        return cell!
    }

}

