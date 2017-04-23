//
//  ViewController.swift
//  Noti Mania
//
//  Created by MK on 23/04/2017.
//  Copyright © 2017 Muhammad Khan. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController, UNUserNotificationCenterDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Asked for permission
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge], completionHandler: {didAllow, erroe in })
        
        UNUserNotificationCenter.current().delegate = self
        
    }

    @IBAction func action(_ sender: Any) {
        
        let answer1 = UNNotificationAction(identifier: "answer1", title: "365", options: UNNotificationActionOptions.foreground)
        let answer2 = UNNotificationAction(identifier: "answer2", title: "360", options: UNNotificationActionOptions.foreground)
        
        let category = UNNotificationCategory(identifier: "myCategory", actions: [answer1, answer2], intentIdentifiers: [], options: [])
        UNUserNotificationCenter.current().setNotificationCategories([category])
        
        // Notification created
        let content = UNMutableNotificationContent()
        content.title = "Days of a year"
        content.subtitle = "Do you know?"
        content.body = "Are you sure you know the number of days in a year"
        content.categoryIdentifier = "myCategory"
        content.badge = 1
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: "timerDone", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        
        if response.actionIdentifier == "answer1" {
            print("Correct")
        }
        else {
            print("Wrong")
        }
        completionHandler()
    }

}

