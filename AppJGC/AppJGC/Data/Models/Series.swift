//
//  Series.swift
//  AppJGC
//
//  Created by Javier Gandia Calderón on 23/5/19.
//  Copyright © 2019 Javier Gandia Calderón. All rights reserved.
//

import Foundation
class Series: CustomStringConvertible {
    
    var photo: String?
    var name: String?
    var review: String?
    var director: String?
    var runtime: String?
    var seasons: String?
    var genres: String?
    var  date: Date?
    var description: String {
        
        return """
        Series:
        name: \(String(describing: name))
        review: \(String(describing: review))
        director:  \(String(describing: director))
        genres: \(String(describing: genres))
        """
    }
    
    //Constructor with default values
    convenience init(photo: String? = nil, name: String? = nil, review: String? = nil, director: String?=nil , runtime: String? = nil, seasons: String? = nil , genres: String? = nil, date: Date? = nil) {
       
        self.init()
        self.photo = photo
        self.name = name
        self.review = review
        self.runtime = runtime
        self.director = director
        self.seasons = seasons
        self.genres = genres
        self.date = date
        
    }
}
