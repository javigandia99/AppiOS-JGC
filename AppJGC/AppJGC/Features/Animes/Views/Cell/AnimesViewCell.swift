//
//  AnimesViewCell.swift
//  AppJGC
//
//  Created by Javier Gandia on 30/05/2019.
//  Copyright © 2019 Javier Gandia Calderón. All rights reserved.
//

import UIKit

class AnimesViewCell: UITableViewCell {
    static let mIdentifier = String(describing: AnimesViewCell.self)
    static let mHeight: CGFloat = 250
    
    @IBOutlet weak var mView: UIView!
    @IBOutlet weak var mImageView: UIImageView!
    @IBOutlet weak var mNameLabel: UILabel!
    
    override func prepareForReuse() {
        mImageView.image = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
         mStyle(view: mView)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool){
        super.setSelected (selected, animated: animated)
    }
    
    func update(data anime: Animes?){
        update(image: anime?.photodetail)
        update(name: anime?.name)
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
    
}
