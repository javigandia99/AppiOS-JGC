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
    var itemSpacing: CGFloat = 120
    
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
        return UserViewCell.mHeight
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: UserViewCell.mIdentifier,
                                                     for: indexPath)
            
            (cell as? UserViewCell)?.update(data: defaultUsers[indexPath.row])
            
            return cell
    }
    
   /* @IBAction func addUsers(sender: AnyObject){
        //Creamos el UIAlertController
        let alert = UIAlertController(title: "New User",
                                      message: "Add user:",
                                      preferredStyle: .alert)
        
        //Creamos el UIAlertAction que nos permitirá guardar la tarea
        let save = UIAlertAction(title: "Save",
                                       style: .default,
                                       handler: { (action:UIAlertAction) -> Void in
                                        
        //Guardamos el texto del textField en el array tasks y recargamos la table view
        let textField = alert.textFields!.first
                                        self.saveTask(name:textField!.text!)
                                        self.mTableView.reloadData()
        })
        
        let cancel = UIAlertAction(title: "Cancel",
                                         style: .default) { (action: UIAlertAction) -> Void in
        }
        
        
        
        
        
        
        
        
        
        //Añadimos el TextField al UIAlertController
        alert.addTextField {
            (textField: UITextField) -> Void in
        }
        
        //Añadimos las dos UIAlertAction que hemos creado al UIAlertController
        alert.addAction(save)
        alert.addAction(cancel)
        
        //Lanzamos el UIAlertController
        present(alert,
                animated: true,
                completion: nil)
    }
    */
}
