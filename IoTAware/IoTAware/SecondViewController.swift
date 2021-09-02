//
//  SecondViewController.swift
//  IoTAware
//
//  Created by Bradley Clemson on 22/07/2020.
//  Copyright © 2020 Bradley Clemson. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ToFirstView(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "FirstViewSegue", sender: self)
    }
    
    @IBAction func ToThirdView(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "ThirdViewSegue", sender: self)
    }
    
    @IBAction func showPopup(_ sender: UIButton) {
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "sbPopUpID") as! PopUpViewController
            self.addChild(popOverVC)
            popOverVC.view.frame = self.view.frame
            self.view.addSubview(popOverVC.view)
            popOverVC.didMove(toParent: self)
        }
    
}

