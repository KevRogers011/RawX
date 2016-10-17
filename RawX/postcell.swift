//
//  post cell.swift
//  RawX
//
//  Created by Kevin Rogers on 10/13/16.
//  Copyright © 2016 Kevin Rogers. All rights reserved.
//

import UIKit

class post_cell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var profileIMG: UIImageView!
    @IBOutlet weak var Usernamelbl: UILabel!
    @IBOutlet weak var postIMG: UIImageView!
    @IBOutlet weak var caption: UITextView!
    @IBOutlet weak var likeslbl: UILabel!

}
