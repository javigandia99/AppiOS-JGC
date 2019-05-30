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
    @IBOutlet weak var mdetailReview: UILabel!
    @IBOutlet weak var mdetailDirector: UILabel!
    @IBOutlet weak var mdetailRuntime: UILabel!
    @IBOutlet weak var mdetailGenres: UILabel!
    @IBOutlet weak var mdetailDate: UILabel!
    
    
    var mdata: Series? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        update(image: mdata?.photo)
        update(name: mdata?.name)
        update(review: mdata?.review)
        update(director: mdata?.director)
        update(runtime: mdata?.runtime)
        update(genres: mdata?.genres)
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
    private func update(review: String?){
        mdetailReview.text = review
    }
    private func update(director: String?){
        mdetailDirector.text = director
    }
    private func update(runtime: String?){
        mdetailRuntime.text = runtime
    }
    private func update(genres: String?){
        mdetailGenres.text = genres
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    func set(data series: Series) {
        mdata = series
    }
    
    
}
