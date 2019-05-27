//
//  SeriesViewCell.swift
//  AppJGC
//
//  Created by Javier Gandia Calderón on 23/5/19.
//  Copyright © 2019 Javier Gandia Calderón. All rights reserved.
//

import UIKit

class SeriesViewCell: UICollectionViewCell {
    
    @IBOutlet weak var mImage: UIImageView!
    @IBOutlet weak var mLabel: UILabel!
 
    override func prepareForReuse() {
        mImage.image = nil
        mLabel.text = nil
    }
    
    func update(data serie: Series?){
        update(image: serie?.photo)
        update(name: serie?.name)
        
    }
    
    private func update(image: String?){
        guard let imageData = image else{
            return
        }
        
        mImage.image = UIImage(named: imageData)
    }
    
    private func update(name: String?){
        mLabel.text = name
    }
    
}
