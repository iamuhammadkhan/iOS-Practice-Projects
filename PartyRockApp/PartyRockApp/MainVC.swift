//
//  ViewController.swift
//  PartyRockApp
//
//  Created by MK on 05/03/2017.
//  Copyright © 2017 Ab Bachao (Pvt) Ltd. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView:UITableView!
    
    var partyRocks = [PartyRock]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = PartyRock(imageURL: "http://s3.india.com/wp-content/uploads/2017/01/PSL-2017.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/FwL6C8jKBxY\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "PSL 2017 Final")
        
        let p2 = PartyRock(imageURL: "https://4.bp.blogspot.com/-rWS8akrdJRo/V3iQPLw-O-I/AAAAAAAACKo/93AyeqJiC9gk9UQxuUi5hbtmv_JOPNBRACLcB/s1600/PSL-Edition-2.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/htwd-xXTv-Q\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "PSL 2017 Playoff 3")
        
        let p3 = PartyRock(imageURL: "http://psl2017.com.pk/wp-content/uploads/2016/10/pakistan-super-league-PSL2016-teams-international-players.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/cO461xUNJTM\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "PSL 2017 Playoff 1")
        
        let p4 = PartyRock(imageURL: "https://1.bp.blogspot.com/-GVDyMzQz5x8/WAo6gm7POKI/AAAAAAAAACA/9-3so14rz6EC1SqJWeHT2qDsLFFErCU_QCLcB/s1600/Players%2BOut%2BFrom%2BPSL%2B2017.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/HCxkxZrXTyE\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "PSL 2017 Playoff 2")
        
        let p5 = PartyRock(imageURL: "http://www.totalsportz.com/wp-content/uploads/2017/02/psl.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/FYWh0VAGAPw\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "PSL 2017 Final Match")
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            
            return cell
            
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let partyRock = partyRocks[indexPath.row]
        
        performSegue(withIdentifier: "VideoVC", sender: partyRock)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let dest = segue.destination as? VideoVC {
            
            if let party = sender as? PartyRock {
                dest.partyRock = party
            }
        }
    }
}

