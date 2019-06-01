//
//  AnimesDetailViewController.swift
//  AppJGC
//
//  Created by Javier Gandia on 27/05/2019.
//  Copyright © 2019 Javier Gandia Calderón. All rights reserved.
//

import UIKit

class AnimesDetailViewController: UIViewController {
    @IBOutlet weak var mImage: UIImageView!
    @IBOutlet weak var mdetailName: UILabel!
    @IBOutlet weak var mdetailReview: UILabel!
    @IBOutlet weak var mdetailRuntime: UILabel!
    @IBOutlet weak var mdetailSeasons: UILabel!
    @IBOutlet weak var mdetailEpisodes: UILabel!
    @IBOutlet weak var mdetailGenres: UILabel!
    @IBOutlet weak var mdetailDate: UILabel!
    @IBOutlet weak var mdetailImage: UIImageView!
    
    var animes = defaultAnimes
    var mdata: Animes? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        update(image: mdata?.photo)
        update(name: mdata?.name)
        update(review: mdata?.review)
        update(runtime: mdata?.runtime)
        update(seasons: mdata?.seasons)
        update(episodes: mdata?.episodes)
        update(genres: mdata?.genres)
        update(date: mdata?.date)
        update(dimage: mdata?.photodetail)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    func set(data animes: Animes) {
        mdata = animes
    }
    
    private func update(image: String?){
        guard let imageData = image else{
            return
        }
        
        mImage.image = UIImage(named: imageData)
    }
    private func update(name: String?){
        mdetailName.text = name
    }
    private func update(review: String?){
        mdetailReview.text = review
    }
    private func update(runtime: String?){
        mdetailRuntime.text = runtime
    }
    private func update(seasons: String?){
        mdetailSeasons.text = seasons
    }
    private func update(episodes: String?){
        mdetailEpisodes.text = episodes
    }
    private func update(genres: String?){
        mdetailGenres.text = genres
    }
    private func update(dimage: String?){
        guard let imagedData = dimage else{
            return
        }
        
        mImage.image = UIImage(named: imagedData)
    }
    private func update(date: Date?) {
        mdetailDate?.text = date?.toFormattedString(with: defaultDateFormatYear)
    }
}
