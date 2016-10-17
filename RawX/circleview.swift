//
//  circleview.swift
//  RawX
//
//  Created by Kevin Rogers on 10/11/16.
//  Copyright © 2016 Kevin Rogers. All rights reserved.
//

import UIKit

class circleview: UIImageView {
    override func awakeFromNib(){
        layer.shadowColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: 0.6).cgColor
        layer.shadowRadius = 5.0
        layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = self.frame.width / 2
    }
   

}
