//
//  FirstViewController.swift
//  SettingsTemplate
//
//  Created by Bradley Clemson on 28/07/2020.
//  Copyright © 2020 Stephan Dowless. All rights reserved.
//

import UIKit
import UserNotifications

class FirstViewController: UIViewController {
    
    
    @IBAction func ToSettings(_ sender: UIButton) {
        self.performSegue(withIdentifier: "ToSettingsSegue", sender: self)
    }
    
    @IBAction func showPopup(_ sender: UIButton) {
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "sbPopUpID") as! PopUpViewController
        self.addChild(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParent: self)
    }
    @IBAction func ToReport(_ sender: UIButton) {
        self.performSegue(withIdentifier: "ToReportSegue", sender: self)
    
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    //Asks the user for permission
        let center = UNUserNotificationCenter.current()
        
        center.requestAuthorization(options: [.alert, .sound]) { (granted, error) in
            
        }
    
    // Notification content:
    
        let content = UNMutableNotificationContent()
        content.title = "IoTAware"
        content.body = "Nearby IoT device using your data"

    // Notification trigger:
        
        let date = Date().addingTimeInterval(10)
        let dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        
        //The request:
        let uuidString = UUID().uuidString
        
        let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
        
        //Registering the request
        center.add(request) { (error) in
            //Check the error parameter and handle any errors. 
            
        }
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
