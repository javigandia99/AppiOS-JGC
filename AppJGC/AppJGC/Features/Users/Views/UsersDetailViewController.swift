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
    @IBOutlet weak var mdetailEmail: UILabel!
    @IBOutlet weak var mSeriesCollectionView: UICollectionView!
    @IBOutlet weak var mAnimesCollectionView: UICollectionView!
    @IBOutlet weak var mMoviesCollectionView: UICollectionView!
    
    var users = defaultUsers
    var mdata: Users? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        update(image: mdata?.photo)
        update(name: mdata?.name)
        update(userid: mdata?.userid)
        update(email: mdata?.email)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    func set(data users: Users) {
        mdata = users
    }
    
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
    
    private func update(email: String?){
        mdetailEmail.text = email
    }
   
    
    
}
