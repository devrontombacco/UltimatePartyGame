//
//  GameVC.swift
//  UltimatePartyGame
//
//  Created by Devron Tombacco on 14/05/2020.
//  Copyright © 2020 dtomswift. All rights reserved.
//

import UIKit

class GameVC: UIViewController {
    
    var gamePlayers: [String] = []
    var taskTimer: Timer?
    let playerTask = RandomSelection()
    var count: Int = 0
    
    @IBOutlet weak var playerNameLabel: UILabel!
    @IBOutlet weak var infoVCButton: UIBarButtonItem!
    @IBOutlet weak var taskLabel: UILabel!
    @IBOutlet weak var goButton: UIButton!
    @IBOutlet weak var completeButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        changePlayerName()
        completeButton.isEnabled = true
        
    }
    
    func configureUI() {
        configureTaskLabel()
        configureButtons()
    }
    
    func configureTaskLabel() {
        taskLabel.layer.cornerRadius = taskLabel.bounds.size.width / 2
        taskLabel.clipsToBounds = true
        taskLabel.layer.borderWidth = 2
        taskLabel.layer.borderColor = UIColor.white.cgColor
    }
    
    func configureButtons(){
        goButton.setTitleColor(.gray, for: .disabled)
        completeButton.setTitleColor(.gray, for: .disabled)
    }
    
    @IBAction func goButtonPressed(_ sender: UIButton) {
        
        startTimer()
        goButton.isEnabled = false
        completeButton.isEnabled = true
    }
    
    func startTimer(){
        taskTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomTask), userInfo: nil, repeats: true)
    }
    
    @objc func showRandomTask() {
        
        taskLabel.text = playerTask.taskArray.randomElement()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.taskTimer?.invalidate()
            
        }
    }
    
    func changePlayerName(){
        
        count += 1
        if count == gamePlayers.count {
           count = 0
        }
        playerNameLabel.text? = gamePlayers[count]
        
    }
    
    @IBAction func completeButtonPressed(_ sender: UIButton) {
        
        changePlayerName()
        taskLabel.text = "Lets GO!"
        goButton.isEnabled = true
        completeButton.isEnabled = false

    }
    
}

