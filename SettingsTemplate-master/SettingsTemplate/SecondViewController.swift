//
//  SecondViewController.swift
//  SettingsTemplate
//
//  Created by Bradley Clemson on 28/07/2020.
//  Copyright © 2020 Stephan Dowless. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBAction func ToSettings2(_ sender: UIButton) {
        self.performSegue(withIdentifier: "ToSettingsSegue2", sender: self)
    }
    
    
override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
