//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by MK on 05/03/2017.
//  Copyright © 2017 Ab Bachao (Pvt) Ltd. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func updateUI(partyRock:PartyRock) {
        videoTitle.text = partyRock.videoTitle
    }
    
}
