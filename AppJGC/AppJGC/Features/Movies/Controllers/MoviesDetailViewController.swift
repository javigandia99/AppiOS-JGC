//
//  MoviesDetailViewController.swift
//  AppJGC
//
//  Created by Javier Gandia on 27/05/2019.
//  Copyright © 2019 Javier Gandia Calderón. All rights reserved.
//

import UIKit

class MoviesDetailViewController: UIViewController {
    
    @IBOutlet weak var mdetailImage: UIImageView!
    @IBOutlet weak var mdetailName: UILabel!
    @IBOutlet weak var mdetailReview: UILabel!
    @IBOutlet weak var mdetailDirector: UILabel!
    @IBOutlet weak var mdetailRuntime: UILabel!
    @IBOutlet weak var mdetailGenres: UILabel!
    
    var mdata: Movies?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        update(image: mdata?.photo)
        update(name: mdata?.name)
        update(review: mdata?.review)
        update(director: mdata?.director)
        update(runtime: mdata?.runtime)
        update(genres: mdata?.genres)
    }
    
    func set(data movies: Movies) {
        mdata = movies
    }
    
    private func update(image: String?){
        guard let imageData = image else{
            return
        }
        
        mdetailImage.image = UIImage(named: imageData)
        mdetailImage.layer.borderWidth = 1
        mdetailImage.layer.borderColor = UIColor.blue.cgColor
    }
    private func update(name: String?){
        mdetailName.text = name
    }
    private func update(review: String?){
        mdetailReview.text = review
    }
    private func update(director: String?){
        mdetailDirector.text = director
    }
    private func update(runtime: String?){
        mdetailRuntime.text = runtime
    }
    private func update(genres: String?){
        mdetailGenres.text = genres
    }
    
}
