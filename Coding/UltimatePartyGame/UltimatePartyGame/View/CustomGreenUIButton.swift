//
//  CustomGreenUIButton.swift
//  UltimatePartyGame
//
//  Created by Devron Tombacco on 07/07/2020.
//  Copyright © 2020 dtomswift. All rights reserved.
//

import UIKit

class CustomGreenButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupButton()
    }
    
    func setupButton() {
        configureButton()
    }
    
    func configureButton(){
        layer.borderColor = UIColor(red:0/255, green:255/255, blue:118/255, alpha: 1).cgColor
        layer.cornerRadius = 10
        layer.borderWidth = 1.0
    }
    
    
}
