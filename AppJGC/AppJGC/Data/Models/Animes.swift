//
//  Animes.swift
//  AppJGC
//
//  Created by Javier Gandia on 25/05/2019.
//  Copyright © 2019 Javier Gandia Calderón. All rights reserved.
//


import Foundation
class Animes: CustomStringConvertible {
  
    var photo: String?
    var name: String?
    var review: String?
    var runtime: String?
    var seasons: String?
    var episodes: String?
    var genres: String?
    var date: Date?
    var photodetail: String?
    
    
    var description: String {
        
        return """
        Animes:
        name: \(String(describing: name))
        review: \(String(describing: review))
        runtime: \(String(describing: runtime))
        seasons: \(String(describing: seasons))
        episodes: \(String(describing: episodes))
        genres: \(String(describing: genres))
        date: \(String(describing: date))
        """
    }
    
    // Custom init (Constructor) class with default values
    convenience init(photo: String? = nil, name: String? = nil, review: String? = nil , runtime: String? = nil, seasons: String? = nil, episodes: String? = nil, genres: String? = nil, date: Date? = nil, photodetail: String? = nil) {
        self.init()
        
        self.photo = photo
        self.name = name
        self.review = review
        self.runtime = runtime
        self.seasons = seasons
        self.episodes = episodes
        self.genres = genres
        self.date = date
        self.photodetail = photodetail
        
    }
}
