//
//  detailedView.swift
//  RawX
//
//  Created by Kevin Rogers on 10/8/16.
//  Copyright © 2016 Kevin Rogers. All rights reserved.
//

import UIKit

class detailedView: UIView {
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.shadowColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: 0.6).cgColor
        layer.opacity = 0.8
        layer.shadowRadius = 5.0
        layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
    }

}
