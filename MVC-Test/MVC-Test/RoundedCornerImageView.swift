//
//  RoundedCornerImageView.swift
//  MVC-Test
//
//  Created by MK on 12/03/2017.
//  Copyright © 2017 Ab Bachao (Pvt) Ltd. All rights reserved.
//

import UIKit

class RoundedCornerImageView: UIImageView {

    override func awakeFromNib() {
        self.layer.cornerRadius = 5.0
        self.clipsToBounds = true
    }
    
}
