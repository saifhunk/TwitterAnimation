//
//  TWTButton.swift
//  TB_TwitterHeader
//
//  Created by Saif Chaudhary on 1/22/17.
//  Copyright © 2017 Saif Chaudhary. All rights reserved.
//

import UIKit

class TWTButton: UIButton {

    override func awakeFromNib() {
        
        self.layer.cornerRadius = 5.0
        self.layer.borderWidth = 1.0
        self.layer.borderColor = UIColor(red: 85.0/255.0, green: 172.0/255.0, blue: 238.0/255.0, alpha: 1.0).cgColor
        
    }

}
