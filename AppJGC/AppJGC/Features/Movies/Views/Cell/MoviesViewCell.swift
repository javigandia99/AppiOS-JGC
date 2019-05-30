//
//  MoviesViewCell.swift
//  AppJGC
//
//  Created by Javier Gandia on 30/05/2019.
//  Copyright © 2019 Javier Gandia Calderón. All rights reserved.
//

import UIKit

class MoviesViewCell: UITableViewCell {
    static let mIdentifier = String(describing: MoviesViewCell.self)
    static let mHeight: CGFloat = 120.0
    
    @IBOutlet weak var mView: UIView!
    @IBOutlet weak var mImageView: UIImageView!
    @IBOutlet weak var mNameLabel: UILabel!
    @IBOutlet weak var mReviewLabel: UILabel!
    @IBOutlet weak var mDirectorLabel: UILabel!
    @IBOutlet weak var mRuntimeLabel: UILabel!
   
    override func prepareForReuse() {
        mImageView.image = nil
        mNameLabel.text = nil
        mReviewLabel.text = nil
        mDirectorLabel.text = nil
        mRuntimeLabel.text = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        mStyle(view: mView)
    }
    
    func update(data movie: Movies?){
        update(image: movie?.photo)
        update(name: movie?.name)
        update(review: movie?.review)
        update(director: movie?.director)
        update(runtime: movie?.runtime)
    }
    
    private func update(image: String?){
        guard let imageData = image else{
            return
        }
        
        mImageView.image = UIImage(named: imageData)
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
