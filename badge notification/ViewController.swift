//
//  ViewController.swift
//  badge notification
//
//  Created by Adwait Barkale on 27/10/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    var badgeNumber:Int = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setBadgeNotification()
    }
    
    func setBadgeNotification()
    {
        let application = UIApplication.shared
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.badge,.alert,.sound]) { (success, error) in
        
        }
        application.applicationIconBadgeNumber = badgeNumber
        application.registerForRemoteNotifications()
    }

}

