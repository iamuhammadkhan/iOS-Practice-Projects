//
//  ViewController.swift
//  TableDemo
//
//  Created by MK on 07/05/2017.
//  Copyright © 2017 Muhammad Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let devCourses = [
        ("iOS App Development With Swift Essential Training", "Simon Allardice"),
        ("iOS 8 SDK New Features", "Lee Brimelow"),
        ("Data Visualization With D3.js", "Ray Villalobos"),
        ("Swift Essential Training", "Simon Allardice"),
        ("Up And Running With AngularJS", "Ray Villalobos"),
        ("MySQL Essential Training", "Bill Weinman"),
        ("Building Adaptive Android Apps With Fragments", "Davis Gassner"),
        ("Advanced Unity 3D Game Programming", "Micheal House"),
        ("Up And Running With Ubuntu Desktop Linux", "Scott Simpson"),
        ("Up And Running With C", "Dan Gookin") ]
    
    let webCourses = [
        ("HTML Essential Training", "James Williamson"),
        ("Building A Responsive Single Page Design", "Ray Villalobos"),
        ("Muse Essential Training", "Justin Seeley"),
        ("WordPress Essential Training", "Morten Rand Hendriksen"),
        ("Installing And Running Joomla! 3: Local And Web Hosted Sites", "Jen Kramer"),
        ("Managing Records In SharePOint", "Toni Saddler French"),
        ("Design The Web: SVG Rollovers With CSS", "Chris Converse"),
        ("Up ANd Running With Ember.js", "Kai Gittens"),
        ("HTML5 Game Development With Phaser", "Joseph Labrecque"),
        ("Responsive Media", "Christopher Schmitt") ]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return devCourses.count
        } else {
            return webCourses.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        if indexPath.section == 0 {
            let (courseTitle, courseAuthor) = devCourses[indexPath.row]
            cell.textLabel?.text = courseTitle
            cell.detailTextLabel?.text = courseAuthor
        } else {
            let (courseTitle, courseAuthor) = webCourses[indexPath.row]
            cell.textLabel?.text = courseTitle
            cell.detailTextLabel?.text = courseAuthor
        }
        
        var myImage = UIImage(named: "Cellicon")
        cell.imageView?.image = myImage
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Developer Courses"
        } else {
            return "Web Courses"
        }
    }

}

