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
    
    private var mSeries: Array<Series>? = nil
    var itemSpacing: CGFloat = 200
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure( collectionView: mCollectionView)
        mSeries = defaultSeries
        mCollectionView.reloadData()
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
        viewController.delegate = self
        viewController.set(data: selected)
        
        
    }
}

extension SeriesViewController:  UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mSeries?.count ?? 0 
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = mCollectionView.dequeueReusableCell(withReuseIdentifier: SeriesViewCell.mIdentifier, for: indexPath)
        
        (cell as? SeriesViewCell)?.update(data: mSeries?[indexPath.row])
        
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
//Function to delete serie delegate
extension SeriesViewController: SeriesDetailDelegate {
    func onDelete(series: Series?) {
        guard let serieDel = series else {
            return
        }
        
        mSeries?.removeAll(where: { $0.name == serieDel.name })
        mCollectionView.reloadData()
    }
}
