//
//  Animes.swift
//  AppJGC
//
//  Created by Javier Gandia on 25/05/2019.
//  Copyright © 2019 Javier Gandia Calderón. All rights reserved.
//


import Foundation
class Animes: CustomStringConvertible {
    //Properties whit optional '?' value can be nil
    var photo: String?
    var name: String?
    var review: String?
    
    // Use description var of CustomStringConvertible
    // to print this class with custom String format
    var description: String {
        
        // With """ we can print a multiline String
        return """
        Series:
        name: \(String(describing: name))
        review: \(String(describing: review))
        """
    }
    
    // Custom init (Constructor) class with default values
    convenience init(photo: String? = nil, name: String? = nil, review: String? = nil) {
        self.init()
        
        // Always init all properties
        self.photo = photo
        self.name = name
        self.review = review
        
    }
}
