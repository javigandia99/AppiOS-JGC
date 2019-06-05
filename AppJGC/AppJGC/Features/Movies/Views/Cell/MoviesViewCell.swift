//
//  MoviesViewCell.swift
//  AppJGC
//
//  Created by Javier Gandia on 30/05/2019.
//  Copyright © 2019 Javier Gandia Calderón. All rights reserved.
//
import UIKit

class MoviesViewCell: UICollectionViewCell {
    static let mIdentifier = String(describing: MoviesViewCell.self)
    
    @IBOutlet weak var mImageView: UIImageView!
    @IBOutlet weak var checkmarkLabel : UILabel!
    
    var movies = defaultMovies
    
    
    override func prepareForReuse() {
        mImageView.image = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func update(data movie: Movies?){
        update(image: movie?.photo)
    }
    
    private func update(image: String?){
        guard let imageData = image else{
            return
        }
        mImageView.image = UIImage(named: imageData)
    }
    
    var isInEditingMode: Bool = false {
        didSet {
            checkmarkLabel.isHidden = !isInEditingMode
        }
    }
    
    // 2
    override var isSelected: Bool {
        didSet {
            if isInEditingMode {
                checkmarkLabel.text = isSelected ? "✓" : ""
            }
        }
    }
    
}

