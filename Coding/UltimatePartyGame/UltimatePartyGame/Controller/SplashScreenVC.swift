//
//  ViewController.swift
//  UltimatePartyGame
//
//  Created by Devron Tombacco on 14/05/2020.
//  Copyright © 2020 dtomswift. All rights reserved.
//

import UIKit

class SplashScreenVC: UIViewController {

    @IBOutlet weak var appTitleLabel: UILabel!
    
    @IBOutlet weak var responsibleDrinkLabel: UILabel!
    

    @IBOutlet weak var warningButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        warningButton.layer.cornerRadius = 10
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBAction func responsiblyButton(_ sender: UIButton) {
    }
    
    
}

