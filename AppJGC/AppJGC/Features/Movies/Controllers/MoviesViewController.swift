//
//  MoviesViewController.swift
//  AppJGC
//
//  Created by Javier Gandia on 24/05/2019.
//  Copyright © 2019 Javier Gandia Calderón. All rights reserved.
//
import UIKit

class MoviesViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var itemSpacing: CGFloat = 12
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure(collectionView: collectionView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}

extension MoviesViewController:  UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return defaultMovies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MoviesViewCell.mIdentifier, for: indexPath)
        
        (cell as? MoviesViewCell)?.update(data: defaultMovies[indexPath.row])
        
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

extension MoviesViewController{
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sellectedCell = sender  as? UICollectionViewCell,
            let cellPosition = collectionView.indexPath(for: sellectedCell),
            let viewController =  segue.destination as? MoviesDetailViewController
            else {
                return
        }
        
        let selected = defaultMovies[cellPosition.row]
        viewController.set(data: selected)
        
    }
}
