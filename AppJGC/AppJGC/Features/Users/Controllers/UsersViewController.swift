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
        
        configure(tableView: mTableView)
        
    }
    
    //This function is used to move the data from the designated cell to the details view
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let selectedCell = sender  as? UITableViewCell,
            let cellPosition = mTableView.indexPath(for: selectedCell),
            let viewController =  segue.destination as? UsersDetailViewController
            else {
                return
        }
        let selected = defaultUsers[cellPosition.row]
        viewController.set(data: selected)
        
    }
}

extension UsersViewController: UITableViewDataSource, UITableViewDelegate {
    
    private func configure(tableView: UITableView){
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
    
    //It allows you to edit the rows of the tableview
    func tableView(_ tableView: UITableView, canEditRowAt  indexpath: IndexPath) -> Bool {
        return true
        
    }
    
    //When you slide in the cell of the table view, you can delete the cell and the data that contains
    //It creates an alert to confirm if you really mean to delete the cell or not
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) ->
        UISwipeActionsConfiguration? {
            
            let delete = UIContextualAction(style: .destructive, title: "Delete") {
                (UIContextualAction, view, actionPerformed: @escaping (Bool) -> ()) in
                
                let alert = UIAlertController(title: "Delete User", message: "Are you sure you want to delete this user:", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (alertAction) in
                    actionPerformed(false)
                }))
                
                alert.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: { (alertAction) in
                    
                    defaultUsers.remove(at: indexPath.row)
                    tableView.deleteRows(at: [indexPath], with: .automatic)
                    tableView.reloadData()
                }))
                
                self.present(alert, animated: true)
                
            }
            return UISwipeActionsConfiguration(actions: [delete])
    }
}
