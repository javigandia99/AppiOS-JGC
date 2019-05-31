//
//  AnimesDetailViewController.swift
//  AppJGC
//
//  Created by Javier Gandia on 27/05/2019.
//  Copyright © 2019 Javier Gandia Calderón. All rights reserved.
//

import UIKit

class AnimesDetailViewController: UIViewController {
    
    var animes = defaultAnimes
    var mdata: Animes? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    func set(data animes: Animes) {
        mdata = animes
    }
}
