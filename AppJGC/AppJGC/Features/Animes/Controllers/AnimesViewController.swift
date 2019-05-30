//
//  AnimeViewController.swift
//  AppJGC
//
//  Created by Javier Gandia on 28/05/2019.
//  Copyright © 2019 Javier Gandia Calderón. All rights reserved.
//

import UIKit

class AnimesViewController: UIViewController {
    
    let gradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
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
