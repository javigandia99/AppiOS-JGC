//
//  Users.swift
//  AppJGC
//
//  Created by Javier Gandia Calderón on 23/5/19.
//  Copyright © 2019 Javier Gandia Calderón. All rights reserved.
//

import Foundation
class Users: CustomStringConvertible {
    //Properties whit optional '?' value can be nil
    var photo: String?
    var name: String?
    var surname: String?
    var userid: String?
    var email: String?
    
    // Use description var of CustomStringConvertible
    // to print this class with custom String format
    var description: String {
        
        // With """ we can print a multiline String
        return """
        Name: \(String(describing: name))
        Surname: \(String(describing: surname))
        Userid: \(String(describing: userid))
        Email: \(String(describing: email))
        """
    }
    
    // Custom init (Constructor) class with default values
    convenience init(photo: String? = nil, name: String? = nil, surname: String? = nil, userid: String? = nil, address: String? = nil, email: String? = nil) {
        self.init()
        
        // Always init all properties
        self.photo = photo
        self.name = name
        self.surname = surname
        self.userid = userid
        self.email = email
    }
}
