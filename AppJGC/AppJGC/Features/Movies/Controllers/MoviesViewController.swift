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
    @IBOutlet weak var deleteButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure( collectionView: mCollectionView)
        navigationItem.leftBarButtonItem = editButtonItem
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    //It allows to select the cell of the visible items
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        
        mCollectionView.allowsMultipleSelection = editing
        let indexPaths = mCollectionView.indexPathsForVisibleItems
        for indexPath in indexPaths {
            let cell = mCollectionView.cellForItem(at: indexPath) as! MoviesViewCell
            cell.isInEditingMode = editing
        }
    }
    //The function that allows to enable or disable the button depending on whether there are selected cells or not
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if !isEditing {
            deleteButton.isEnabled = false
        } else {
            deleteButton.isEnabled = true
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        if let selectedItems = mCollectionView.indexPathsForSelectedItems, selectedItems.count == 0 {
            deleteButton.isEnabled = false
        }
    }
    
    //This function is used to move the data from the designated cell to the details view
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
    //The IBAction: deleteItem is used to delete the selected items in the collection view
    @IBAction func deleteItem(_ sender: Any) {
        if let selectedCells = mCollectionView.indexPathsForSelectedItems {
            
            let items = selectedCells.map { $0.item }.sorted().reversed()
            
            for item in items {
                defaultMovies.remove(at: item)
            }
            mCollectionView.deleteItems(at: selectedCells)
            deleteButton.isEnabled = false
            mCollectionView.reloadData()
        }
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
    
    func collectionView ( collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        let flowLayout = collectionViewLayout as! UICollectionViewFlowLayout
        let totalSpace = flowLayout.sectionInset.left + flowLayout.sectionInset.right + (flowLayout.minimumInteritemSpacing * CGFloat(3 - 1))
        let size = Int((collectionView.bounds.width - totalSpace) / CGFloat(3))
        
        return CGSize(width: size, height: size)
    }
    
}
