//
//  AnimeViewController.swift
//  AppJGC
//
//  Created by Javier Gandia on 28/05/2019.
//  Copyright © 2019 Javier Gandia Calderón. All rights reserved.
//

import UIKit

class AnimesViewController: UIViewController {
    @IBOutlet weak var mTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure(TableView: mTableView)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let selectedCell = sender  as? UITableViewCell,
            let cellPosition = mTableView.indexPath(for: selectedCell),
            let viewController =  segue.destination as? AnimesDetailViewController
            else {
                return
        }
        let selected = defaultAnimes[cellPosition.row]
        viewController.set(data: selected)
        
    }
}

extension AnimesViewController: UITableViewDataSource, UITableViewDelegate {
    
    private func configure(TableView: UITableView){
        mTableView.dataSource = self
        mTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return defaultAnimes.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return AnimesViewCell.mHeight
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: AnimesViewCell.mIdentifier,
                                                     for: indexPath)
            
            (cell as? AnimesViewCell)?.update(data: defaultAnimes[indexPath.row])
            
            return cell
    }
    
    //si puede editarse o no, si return true,editable, si return false, no editable
    func tableView(_ tableView: UITableView, canEditRowAt  indexpath: IndexPath) -> Bool {
        return true
        
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) ->
        UISwipeActionsConfiguration? {
            
            let delete = UIContextualAction(style: .destructive, title: "Delete") {
                (UIContextualAction, view, actionPerformed: @escaping (Bool) -> ()) in
                
                let alert = UIAlertController(title: "Delete Anime", message: "Are you sure you want to delete this anime: \(String(data: name))", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (alertAction) in
                    actionPerformed(false)
                }))
                
                alert.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: { (alertAction) in
                    
                    defaultAnimes.remove(at: indexPath.row)
                    tableView.deleteRows(at: [indexPath], with: .automatic)
                    tableView.reloadData()
                }))
                
                self.present(alert, animated: true)
                
            }
            return UISwipeActionsConfiguration(actions: [delete])
    }
}
