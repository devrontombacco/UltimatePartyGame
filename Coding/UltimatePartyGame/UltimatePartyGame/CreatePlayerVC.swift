//
//  CreatePlayerVC.swift
//  UltimatePartyGame
//
//  Created by Devron Tombacco on 14/05/2020.
//  Copyright © 2020 dtomswift. All rights reserved.
//

import UIKit

class CreatePlayerVC: UIViewController, UITextFieldDelegate, UITableViewDataSource, UITableViewDelegate {

    // Variables
    let placeholderText = "Player name..."
    var playerNamesArray: [String] = []
    
    
    // IBOutlets
    @IBOutlet weak var addPlayerLabel: UILabel!
    @IBOutlet weak var playerNameInput: UITextField!
    @IBOutlet weak var playerTableView: UITableView!
    @IBOutlet weak var addPlayerButton: UIButton!
    @IBOutlet weak var readyButtonOutlet: UIButton!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playerNameInput.delegate = self
        playerTableView.delegate = self
        playerTableView.dataSource = self
        
        configureUI()
    }
    
    // CONFIGURATION METHODS
    func configureUI() {
        configurePlayerNameInput()
        configureReadyButton()
    }
    
    func configurePlayerNameInput() {
        playerNameInput.placeholder = placeholderText
    }
    
    func configureReadyButton() {
        readyButtonOutlet.layer.borderColor = UIColor(red:0/255, green:255/255, blue:118/255, alpha: 1).cgColor
        readyButtonOutlet.layer.cornerRadius = 10
        readyButtonOutlet.layer.borderWidth = 1.0
    }
    
    // TEXTFIELD METHODS
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        playerNameInput.endEditing(true)
        // return true
    }

//    func textFieldDidEndEditing(_ textField: UITextField){
//        playerNameInput.text = " "
//    }
    
    // TABLEVIEW METHODS
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        playerNamesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = playerTableView?.dequeueReusableCell(withIdentifier: "playerTableViewCell") as! UITableViewCell
        
        cell.textLabel?.text = playerNamesArray[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            
            playerNamesArray.remove(at: indexPath.row)
            
            playerTableView.beginUpdates()
            playerTableView.deleteRows(at: [indexPath], with: .automatic)
            playerTableView.endUpdates()
            
        }
    }
    
    func addNameToTable() {
        playerNamesArray.append(playerNameInput.text!)
        let indexPath = IndexPath(row: playerNamesArray.count - 1, section: 0)
        
        playerTableView.beginUpdates()
        playerTableView.insertRows(at: [indexPath], with: .automatic)
        playerTableView.endUpdates()
        
        playerNameInput.text = " "
    }
    
    @IBAction func addPlayerButtonPressed(_ sender: UIButton) {
        addNameToTable()
    }
    
    @IBAction func readyButtonPressed(_ sender: UIButton) {
        
    }
}
