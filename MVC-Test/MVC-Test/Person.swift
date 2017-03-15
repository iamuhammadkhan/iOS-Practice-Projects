//
//  Person.swift
//  MVC-Test
//
//  Created by MK on 12/03/2017.
//  Copyright © 2017 Ab Bachao (Pvt) Ltd. All rights reserved.
//

import Foundation

class Person {
    private var _firstName:String
    private var _lastName:String
    
    var firstName:String {
        get {
            return _firstName
        } set {
            _firstName = newValue
        }
    }
    
    var lastName:String {
        get {
            return _lastName
        } set {
            _lastName = newValue
        }
    }
    
    init(first:String, last:String) {
        self._firstName = first
        self._lastName = last
    }
    
    var fullName:String {
        return "\(_firstName) \(_lastName)"
    }
}
