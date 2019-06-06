//
//  Movies.swift
//  AppJGC
//
//  Created by Javier Gandia on 24/05/2019.
//  Copyright © 2019 Javier Gandia Calderón. All rights reserved.
//

import Foundation
class Movies: CustomStringConvertible {
    
    var photo: String?
    var name: String?
    var review: String?
    var director: String?
    var runtime: String?
    var genres: String?
    var description: String {
        
        return """
        Name: \(String(describing: name))
        Review: \(String(describing: review))
        Director:  \(String(describing: director))
        Runtime:  \(String(describing: runtime))
        Genres: \(String(describing: genres))
        """
    }
    
     //Constructor with default values
    convenience init(photo: String? = nil, name: String? = nil, review: String? = nil, director: String? = nil , runtime: String? = nil, genres: String? = nil) {
        
        self.init()
        self.photo = photo
        self.name = name
        self.review = review
        self.runtime = runtime
        self.director = director
        self.genres = genres
        
    }
}
