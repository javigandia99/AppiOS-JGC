//
//  SeriesViewController.swift
//  AppJGC
//
//  Created by Javier Gandia Calderón on 23/5/19.
//  Copyright © 2019 Javier Gandia Calderón. All rights reserved.
//

import UIKit

class SeriesViewController: UIViewController{
    
    @IBOutlet weak var collectionView: UICollectionView!
    var itemSpacing: CGFloat = 12
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure(collectionView: collectionView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sellectedCell = sender  as? UICollectionViewCell,
            let cellPosition = collectionView.indexPath(for: sellectedCell),
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
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SeriesViewCell.mIdentifier, for: indexPath)
        
        (cell as? SeriesViewCell)?.update(data: defaultSeries[indexPath.row])
        
        return cell
    }
    
    func configure(collectionView: UICollectionView){
        collectionView.dataSource = self
        collectionView.delegate = self
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
