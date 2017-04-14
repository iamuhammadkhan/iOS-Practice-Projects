//
//  ViewController.swift
//  TPATestApp
//
//  Created by MK on 13/04/2017.
//  Copyright © 2017 Muhammad Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let TPA_URL = "http://android.grand-sol.net/MA-Test/include/json_file.php"
    
    var studentArray = [AnyObject]()

    override func viewDidLoad() {
        super.viewDidLoad()
      
        self.downloadJson()
    }
    
    func downloadJson() {
        let url = NSURL(string: TPA_URL)
        URLSession.shared.dataTask(with: (url as URL?)!, completionHandler: {(data, response, error) -> Void in
            
        if let jsonObj = try? JSONSerialization.jsonObject(with: data!, options: .allowFragments) as? NSDictionary {
            if let dict = jsonObj!.value(forKey: "result") {
                
                self.studentArray = (dict as? [AnyObject])!
                self.tableView.reloadData()
//                print(dict)
                
            }
        }
            
        }).resume()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
        
        let id = studentArray[indexPath.row]["id"]
        cell?.idLbl.text = id as? String
        print(id! as! String)
        
        return cell!
    }
    
}

