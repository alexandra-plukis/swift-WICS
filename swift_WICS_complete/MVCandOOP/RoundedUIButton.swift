//
//  RoundedUIButton.swift
//  MVCandOOP
//
//  Created by Alexandra Plukis on 10/9/20.
//  Copyright © 2020 Alexandra Plukis. All rights reserved.
//

import UIKit

// This is very similar to extending the UITableViewCellClass

class RoundedUIButton: UIButton {
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // make the buttons rounded
        self.layer.cornerRadius = 10
        
        // change the buttons' background colors
        self.backgroundColor = UIColor(red: (244/256), green: (201/256), blue: (93/256), alpha: 1.0)
        
        // set the default size and weight of the font on the buttons
        self.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .medium) 
    }
    
}
