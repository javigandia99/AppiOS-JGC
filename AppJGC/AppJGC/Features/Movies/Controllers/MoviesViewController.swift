//
//  MoviesViewController.swift
//  AppJGC
//
//  Created by Javier Gandia on 24/05/2019.
//  Copyright © 2019 Javier Gandia Calderón. All rights reserved.
//

import UIKit

class MoviesViewController: UIViewController{
    
    @IBOutlet weak var mCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure( collectionView: mCollectionView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let selectedCell = sender  as? UICollectionViewCell,
            let cellPosition = mCollectionView.indexPath(for: selectedCell),
            let viewController =  segue.destination as? MoviesDetailViewController
            else {
                return
        }
        let selected = defaultMovies[cellPosition.row]
        viewController.set(data: selected)
        
    }
}

extension MoviesViewController:  UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return defaultMovies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = mCollectionView.dequeueReusableCell(withReuseIdentifier: MoviesViewCell.mIdentifier, for: indexPath)
        
        (cell as? MoviesViewCell)?.update(data: defaultMovies[indexPath.row])
        
        return cell
    }
    
    func configure( collectionView: UICollectionView){
        mCollectionView.dataSource = self
        mCollectionView.delegate = self
    }
    
    /*func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
     let size = (collectionView.frame.width / 3 ) - (itemSpacing / 3)
     return CGSize(width: size,
     height: size)
     }
     
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
     return itemSpacing
     }
     
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
     return itemSpacing
     }*/
    func collectionView ( collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        let flowLayout = collectionViewLayout as! UICollectionViewFlowLayout
        let totalSpace = flowLayout.sectionInset.left + flowLayout.sectionInset.right + (flowLayout.minimumInteritemSpacing * CGFloat(3 - 1))
        let size = Int((collectionView.bounds.width - totalSpace) / CGFloat(3))
       
        return CGSize(width: size, height: size)
    }
}

