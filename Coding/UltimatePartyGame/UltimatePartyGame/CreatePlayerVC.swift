//
//  CreatePlayerVC.swift
//  UltimatePartyGame
//
//  Created by Devron Tombacco on 14/05/2020.
//  Copyright © 2020 dtomswift. All rights reserved.
//

import UIKit

class CreatePlayerVC: UIViewController {

    @IBOutlet weak var addPlayerLabel: UILabel!
    
    @IBOutlet weak var addPlayerButtonOutlet: UIButton!
    
    @IBOutlet weak var readyButtonOutlet: UIButton!
    
    @IBOutlet weak var infoButtonOutlet: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addPlayerButtonOutlet.layer.borderColor = UIColor(red:166/255, green:9/255, blue:235/255, alpha: 1).cgColor
        addPlayerButtonOutlet.layer.borderWidth = 1.0
        addPlayerButtonOutlet.layer.cornerRadius = 10
        
        readyButtonOutlet.layer.borderColor = UIColor(red:0/255, green:255/255, blue:118/255, alpha: 1).cgColor
        
        readyButtonOutlet.layer.cornerRadius = 10
        readyButtonOutlet.layer.borderWidth = 1.0
    }
    
    @IBAction func infoButtonAction(_ sender: UIButton) {
    }
    
    @IBAction func addPlayerButtonAction(_ sender: UIButton) {
    }
    
    @IBAction func readyButtonAction(_ sender: UIButton) {
    }
    
}
