//
//  CustomTableViewCell.swift
//  TPA-Json-Test
//
//  Created by MK on 15/04/2017.
//  Copyright © 2017 Muhammad Khan. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var idLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var classLbl: UILabel!
    @IBOutlet weak var dobLbl: UILabel!
    @IBOutlet weak var remarksLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
