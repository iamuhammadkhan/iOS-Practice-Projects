//
//  PlayMusicVC.swift
//  SwappingScreens
//
//  Created by MK on 05/03/2017.
//  Copyright © 2017 Ab Bachao (Pvt) Ltd. All rights reserved.
//

import UIKit

class PlayMusicVC: UIViewController {
    
    @IBOutlet weak var songTitleVC: UILabel!
    
    private var _selectedSong:String!
    
    var selectedSong:String {
        get {
            return _selectedSong
        }
        set {
            _selectedSong = newValue
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.lightGray
        
        songTitleVC.text = _selectedSong
    }
    
    @IBAction func backTo2ndVC(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
