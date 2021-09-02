//
//  FirstViewController.swift
//  IoTAware
//
//  Created by Bradley Clemson on 22/07/2020.
//  Copyright © 2020 Bradley Clemson. All rights reserved.
//

import UIKit
import UserNotifications

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        //Asks the user for permission for notifications
        let center = UNUserNotificationCenter.current()
        
        center.requestAuthorization(options: [.alert, .sound]) { (granted, error) in
            
        }
    }

    @IBAction func ToView2(_ sender: UIButton) {
        self.performSegue(withIdentifier: "SecondViewSegue", sender: self)
        
    }
    
}

