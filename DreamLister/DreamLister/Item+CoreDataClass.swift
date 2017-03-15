//
//  Item+CoreDataClass.swift
//  DreamLister
//
//  Created by MK on 15/03/2017.
//  Copyright © 2017 Muhammad Khan. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData

@objc(Item)
public class Item: NSManagedObject {
    
    public override func awakeFromInsert() {
        
        super.awakeFromInsert()
        
        self.created = NSDate()
    }

}
