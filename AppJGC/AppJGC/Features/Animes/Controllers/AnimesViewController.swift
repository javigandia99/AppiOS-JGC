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
    
    let gradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure(TableView: mTableView)
        
        self.view.backgroundColor = UIColor.green
        
    
        gradientLayer.frame = self.view.bounds
        
        let color1 = UIColor.yellow.cgColor as CGColor
        let color2 = UIColor(red: 1.0, green: 0, blue: 0, alpha: 1.0).cgColor as CGColor
        let color3 = UIColor.clear.cgColor as CGColor
        let color4 = UIColor(white: 0.0, alpha: 0.7).cgColor as CGColor
        gradientLayer.colors = [color1, color2, color3, color4]
        
        gradientLayer.locations = [0.0, 0.25, 0.75, 1.0]
        
        self.view.layer.addSublayer(gradientLayer)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
            let cell = tableView.dequeueReusableCell(withIdentifier: UsersViewCell.mIdentifier,
                                                     for: indexPath)
            
            (cell as? UsersViewCell)?.update(data: defaultUsers[indexPath.row])
            
            return cell
    }
    
    //si puede editarse o no, si return true,editable, si return false, no editable
    func tableView(_ tableView: UITableView, canEditRowAt  indexpath: IndexPath) -> Bool {
        return true
        
    }
    
    //Desliza en la tableview para borrar la cell, no tiene persistencia de datos, por lo que no se borrara del defaultdata
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexpath: IndexPath) {
        if editingStyle == .delete{
            defaultUsers.remove(at: indexpath.row)
            mTableView.beginUpdates()
            mTableView.deleteRows(at: [indexpath], with: .automatic)
            mTableView.endUpdates()
        }
        
}
}
