//
//  StyleExtensionTableViewCell.swift
//  AppJGC
//
//  Created by Javier Gandia on 28/05/2019.
//  Copyright © 2019 Javier Gandia Calderón. All rights reserved.
//

import UIKit

extension UITableViewCell {

   func mStyle(view: UIView?, cornerRadius: CGFloat = 8.0, color: CGColor = UIColor.blue.cgColor) {
    view?.layer.cornerRadius = cornerRadius
    view?.layer.shadowColor = color
    view?.layer.shadowOffset = CGSize.zero
    view?.layer.shadowRadius = cornerRadius
    }
}
