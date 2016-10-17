//
//  RoundBTN.swift
//  RawX
//
//  Created by Kevin Rogers on 10/8/16.
//  Copyright © 2016 Kevin Rogers. All rights reserved.
//

import UIKit

class RoundBTN: UIButton {

    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = self.frame.width / 2
       clipsToBounds = true
    }

}
