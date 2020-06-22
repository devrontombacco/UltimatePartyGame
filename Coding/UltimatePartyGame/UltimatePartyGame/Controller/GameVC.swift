//
//  GameVC.swift
//  UltimatePartyGame
//
//  Created by Devron Tombacco on 14/05/2020.
//  Copyright © 2020 dtomswift. All rights reserved.
//

import UIKit

class GameVC: UIViewController {
    
    @IBOutlet weak var playerNameLabel: UILabel!
    @IBOutlet weak var infoVCButton: UIBarButtonItem!
    @IBOutlet weak var taskLabel: UILabel!
    @IBOutlet weak var goButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    var taskTimer: Timer?
    
    let playerTask = RandomSelection()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    func configureUI() {
        configureTaskLabel()
    }
    
    func configureTaskLabel() {
        taskLabel.layer.cornerRadius = taskLabel.bounds.size.width / 2
        taskLabel.clipsToBounds = true
        taskLabel.layer.borderWidth = 2
        taskLabel.layer.borderColor = UIColor.white.cgColor
    }
    

    @IBAction func goButtonPressed(_ sender: UIButton) {
        startTimer()
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
    
    @IBAction func completeButtonPressed(_ sender: UIButton) {
        
        // Select Next Player and assign to playerName
        // Disable Complete Button until Go is pressed
        // Disable Stop Button until Go is pressed
        taskLabel.text = "Lets GO!"
        
    }
    
    @IBAction func stopButton(_ sender: UIButton) {

        taskTimer?.invalidate()
        // disable Go button
        // disable Stop Button
        
    }
    
        
    
}
