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
    @IBOutlet weak var mCollectionView: UICollectionView!
    @IBOutlet weak var mViewCell: UICollectionViewCell!
    
    var users = defaultUsers
    var mdata: Users? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        update(image: mdata?.photo)
        update(description: mdata?.description)
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
    private func update(userid: String?){
        mdetailUserid.text = userid
    }
    
    private func update(email: String?){
        mdetailEmail.text = email
    }
    private func update(description: String?){
        mdetailName.text = description
    }
    
    func viewWillAppear(animated: Bool){
        super.viewDidAppear(animated)
        
    }
}


extension UsersDetailViewController:  UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return defaultUsers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = mCollectionView.dequeueReusableCell(withReuseIdentifier: UsersViewCell.mIdentifier, for: indexPath)
        
        (cell as? SeriesViewCell)?.update(data: defaultSeries[indexPath.row])
        
        return cell
    }
    func configure( collectionView: UICollectionView){
        mCollectionView.dataSource = self
        mCollectionView.delegate = self
    }
}
