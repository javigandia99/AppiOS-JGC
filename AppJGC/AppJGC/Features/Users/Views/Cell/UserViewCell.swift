//
//  UserViewCell.swift
//  AppJGC
//
//  Created by Javier Gandia Calderón on 23/5/19.
//  Copyright © 2019 Javier Gandia Calderón. All rights reserved.
//

import UIKit

class UsersViewCell: UITableViewCell {
    static let mIdentifier = String(describing: UserViewCell.self)
    static let mHeight: CGFloat = 120.0
    
    @IBOutlet weak var mView: UIView!
    @IBOutlet weak var mImageView: UIImageView!
    @IBOutlet weak var mNameLabel: UILabel!
    @IBOutlet weak var mEmailLabel: UILabel!
    @IBOutlet weak var mUseridLabel: UILabel!
    
    override func prepareForReuse() {
        mImageView.image = nil
        mNameLabel.text = nil
        mEmailLabel.text = nil
        mUseridLabel.text = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        mStyle(view: mView)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool){
        super.setSelected (selected, animated: animated)
    }
    
    func update(data user: Users?){
        update(image: user?.photo)
        update(name: user?.name)
        update(email: user?.email)
        update(userid: user?.userid)
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
    private func update(email: String?){
        mEmailLabel.text = email
    }
    private func update(userid: String?){
        mUseridLabel.text = userid
    }
}
