//
//  RandomTasks.swift
//  UltimatePartyGame
//
//  Created by Devron Tombacco on 14/06/2020.
//  Copyright © 2020 dtomswift. All rights reserved.
//

import Foundation

class RandomSelection {
    
    let taskArray = [
    "DRINK",
    "TRUTH",
    "DARE",
    "NOMINATE",
    "BAD JOKE",
    ]
    
    func randomlySelectTask() -> String {
        let selection = taskArray.randomElement()
        return selection!
        
    }
}
