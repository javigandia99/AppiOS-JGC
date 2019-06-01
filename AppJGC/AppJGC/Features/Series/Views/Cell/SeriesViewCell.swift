//
//  SeriesViewCell.swift
//  AppJGC
//
//  Created by Javier Gandia Calderón on 23/5/19.
//  Copyright © 2019 Javier Gandia Calderón. All rights reserved.
//

import UIKit

class SeriesViewCell: UICollectionViewCell {
    static let mIdentifier = String(describing: SeriesViewCell.self)
    
    @IBOutlet weak var mImage: UIImageView!
    @IBOutlet weak var mName: UILabel!
    var series = defaultSeries
    
    
    override func prepareForReuse() {
        mImage.image = nil
        mName.text = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
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
        mName.text = name
    }
    
}
