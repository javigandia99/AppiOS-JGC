//
//  DateExtension.swift
//  AppJGC
//
//  Created by Javier Gandia on 30/05/2019.
//  Copyright © 2019 Javier Gandia Calderón. All rights reserved.
//

import Foundation

extension Date {
    
    var defaultFormatLocale: String {
        
        let subjectDateFormatted = DateFormatter()
        subjectDateFormatted.locale = Locale(identifier: defaultDateLocale)
        subjectDateFormatted.dateFormat = defaultDateFormat
        
        return subjectDateFormatted.string(from: self)
    }
    
    func toFormattedString(with format: String = defaultDateFormat,
                           locale: String = defaultDateLocale) -> String {
        
        let subjectDateFormatted = DateFormatter()
        subjectDateFormatted.locale = Locale(identifier: locale)
        subjectDateFormatted.dateFormat = format
        
        return subjectDateFormatted.string(from: self)
    }
}
let defaultDateFormat = "eeee dd 'de' MMMM 'de' yyyy"
let defaultDateFormatYear = "YYYY"
let defaultDateLocale = "es_ES"
