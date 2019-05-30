//
//  UsersDetailViewController.swift
//  AppJGC
//
//  Created by Javier Gandia Calderón on 23/5/19.
//  Copyright © 2019 Javier Gandia Calderón. All rights reserved.
//

import UIKit
class UsersDetailViewController: UIViewController {
    
    @IBOutlet weak var mdetailImage: UIImageView!
    @IBOutlet weak var mdetailName: UILabel!
    @IBOutlet weak var mdetailreview: UILabel!
    var users = defaultUsers
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func update(data user: Users?){
        update(image: user?.photo)
       update(name: user?.name)
        /*update(email: user?.email)
        update(userid: user?.userid)*/
    }
    
    private func update(image: String?){
        guard let imageData = image else{
            return
        }
        
       mdetailImage.image = UIImage(named: imageData)
    }
    
    private func update(name: String?){
         mdetailName.text = name
    }/*
    private func update(email: String?){
        mEmailLabel.text = email
    }
    private func update(userid: String?){
        mUseridLabel.text = userid
    }
    private func update(description: String?){
        mNameLabel.text = name
    }*/
    
}
