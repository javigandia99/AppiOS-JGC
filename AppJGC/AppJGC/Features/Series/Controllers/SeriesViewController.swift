//
//  SeriesViewController.swift
//  AppJGC
//
//  Created by Javier Gandia Calderón on 23/5/19.
//  Copyright © 2019 Javier Gandia Calderón. All rights reserved.
//

import UIKit

class SeriesViewController: UIViewController{
    
    @IBOutlet weak var mCollectionView: UICollectionView!
    
    var itemSpacing: CGFloat = 200
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure( collectionView: mCollectionView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    //This function is used to move the data from the designated cell to the details view
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let selectedCell = sender  as? UICollectionViewCell,
            let cellPosition = mCollectionView.indexPath(for: selectedCell),
            let viewController =  segue.destination as? SeriesDetailViewController
            else {
                return
        }
        let selected = defaultSeries[cellPosition.row]
        viewController.set(data: selected)
        
    }
}

extension SeriesViewController:  UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return defaultSeries.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = mCollectionView.dequeueReusableCell(withReuseIdentifier: SeriesViewCell.mIdentifier, for: indexPath)
        
        (cell as? SeriesViewCell)?.update(data: defaultSeries[indexPath.row])
        
        return cell
    }
    
    func configure( collectionView: UICollectionView){
        mCollectionView.dataSource = self
        mCollectionView.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.width / 2.0) - (itemSpacing / 2)
        return CGSize(width: size,
                      height: size)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return itemSpacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return itemSpacing
    }
}
