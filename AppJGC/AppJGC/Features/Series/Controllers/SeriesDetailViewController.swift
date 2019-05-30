//
//  SeriesDetailViewController.swift
//  AppJGC
//
//  Created by Javier Gandia Calderón on 23/5/19.
//  Copyright © 2019 Javier Gandia Calderón. All rights reserved.
//

import UIKit

class SeriesDetailViewController: UIViewController {
    
    @IBOutlet weak var mdetailImage: UIImageView!
    @IBOutlet weak var mdetailName: UILabel!
   
    var mdata: Series? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        update(image: mdata?.photo)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    private func update(image: String?){
        guard let imageData = image else{
            return
        }
        
        mdetailImage.image = UIImage(named: imageData)
    }
    private func update(name: String?){
        mdetailName.text = name
    }
    
    func set(data series: Series) {
        mdata = series
    }
    
    
}
