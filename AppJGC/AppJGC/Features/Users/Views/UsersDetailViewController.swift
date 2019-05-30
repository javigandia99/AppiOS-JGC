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
    @IBOutlet weak var mdetailUserid: UILabel!
    
    var users = defaultUsers
    var mdata: Users? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        update(image: mdata?.photo)
        update(name: mdata?.name)
        update(userid: mdata?.userid)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    func set(data users: Users) {
        mdata = users
    }
    
   
        /*update(email: user?.email)
        update(userid: user?.userid)*/
    
    
    private func update(image: String?){
        guard let imageData = image else{
            return
        }
        
       mdetailImage.image = UIImage(named: imageData)
    }
    
    
    func viewWillAppear(animated: Bool){
        super.viewDidAppear(animated)
        
    }
    
    private func update(name: String?){
         mdetailName.text = name
    }
    private func update(userid: String?){
        mdetailUserid.text = userid
    }
    /*
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
