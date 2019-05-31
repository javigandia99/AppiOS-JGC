//
//  MoviesDetailViewController.swift
//  AppJGC
//
//  Created by Javier Gandia on 27/05/2019.
//  Copyright © 2019 Javier Gandia Calderón. All rights reserved.
//

import UIKit

class MoviesDetailViewController: UIViewController {
    @IBOutlet weak var mView: UIView!
    @IBOutlet weak var mImageView: UIImageView!
    @IBOutlet weak var mNameLabel: UILabel!
    @IBOutlet weak var mReviewLabel: UILabel!
    @IBOutlet weak var mDirectorLabel: UILabel!
    @IBOutlet weak var mRuntimeLabel: UILabel!
    var mdata: Movies?
    
    func set(data movies: Movies) {
        mdata = movies
    }
    private func update(name: String?){
        mNameLabel.text = name
    }
    private func update(review: String?){
        mReviewLabel.text = review
    }
    private func update(director: String?){
        mDirectorLabel.text = director
    }
    private func update(runtime: String?){
        mRuntimeLabel.text = runtime
    }
}

