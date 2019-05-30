//
//  SeriesViewController.swift
//  AppJGC
//
//  Created by Javier Gandia Calderón on 23/5/19.
//  Copyright © 2019 Javier Gandia Calderón. All rights reserved.
//


import UIKit

class UsersViewController: UIViewController {
  
    @IBOutlet weak var mTableView: UITableView!
    var itemSpacing: CGFloat = 150
    var users = defaultUsers
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure(TableView: mTableView)
        
    }
}

extension UsersViewController: UITableViewDataSource, UITableViewDelegate {
    
    private func configure(TableView: UITableView){
        mTableView.dataSource = self
        mTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return defaultUsers.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UsersViewCell.mHeight
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: UsersViewCell.mIdentifier,
                                                     for: indexPath)
            
            (cell as? UsersViewCell)?.update(data: defaultUsers[indexPath.row])
            
            return cell
    }
    
    //si puede editarse o no, si return true,editable, si return false, no editable
    func tableView(_ tableView: UITableView, canEditRowAt  indexpath: IndexPath) -> Bool {
        return true
        
    }
    
    //Desliza en la tableview para borrar la cell, no tiene persistencia de datos
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexpath: IndexPath) {
        if editingStyle == .delete{
            defaultUsers.remove(at: indexpath.row)
            mTableView.beginUpdates()
            mTableView.deleteRows(at: [indexpath], with: .automatic)
            mTableView.endUpdates()
        }
        
    }
    
    /*
    private func tableView(_ tableView: UITableView, moveRowAtIndexPath IndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
        var itemToMove = tableView[IndexPath.row]
        tableView.removeAtIndex(IndexPath.row)
        mTableView.insert(itemToMove, atIndex: toIndexPath.row)
        
    }*/
}

extension UsersViewController{
    //funcion para pasar datos a UserDetail
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let selectedPosition = sender as? IndexPath else {
            return
        }
        
        if let destinationController = segue.destination as? UsersDetailViewController {
            
            destinationController.users = [users[selectedPosition.row]]
        }
    }
}
