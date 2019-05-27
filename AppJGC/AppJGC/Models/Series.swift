//
//  Series.swift
//  AppJGC
//
//  Created by Javier Gandia Calderón on 23/5/19.
//  Copyright © 2019 Javier Gandia Calderón. All rights reserved.
//

import Foundation
class Series: CustomStringConvertible {
    //Properties whit optional '?' value can be nil
    var photo: String?
    var name: String?
    var review: String?
    var director: String?
    var runtime: Int?
    var genres: String?
    var  date: Date?
    
    // Use description var of CustomStringConvertible
    // to print this class with custom String format
    var description: String {
        
        // With """ we can print a multiline String
        return """
        Series:
        name: \(String(describing: name))
        review: \(String(describing: review))
        director:  \(String(describing: director))
        genres: \(String(describing: genres))
        """
    }
    
    // Custom init (Constructor) class with default values
    convenience init(photo: String? = nil, name: String? = nil, review: String? = nil, director: String?=nil , runtime: Int? = nil, genres: String? = nil, date: Date? = nil) {
        self.init()
        
        // Always init all properties
        self.photo = photo
        self.name = name
        self.review = review
        self.runtime = runtime
        self.director = director
        self.genres = genres
        self.date = date
        
    }
}
