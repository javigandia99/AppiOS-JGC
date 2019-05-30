//
//  DateExtension.swift
//  AppJGC
//
//  Created by Javier Gandia on 30/05/2019.
//  Copyright © 2019 Javier Gandia Calderón. All rights reserved.
//

import Foundation

// Create date extension to show custom date string
extension Date {
    
    // Option 1 - Create a computed var to format this date
    // with default locale and default format
    var defaultFormatLocale: String {
        let subjectDateFormatted = DateFormatter()
        // Set locale to Spain
        subjectDateFormatted.locale = Locale(identifier: defaultDateLocale)
        // Set date format style "DAY dayNumber 'de' MONTH 'de' YEAR"
        subjectDateFormatted.dateFormat = defaultDateFormat
        
        return subjectDateFormatted.string(from: self)
    }
    
    // Option 2 - Create a function to format this date
    // with this format or default and this locale or default
    func toFormattedString(with format: String = defaultDateFormat,
                           locale: String = defaultDateLocale) -> String {
        let subjectDateFormatted = DateFormatter()
        // Set locale to Spain
        subjectDateFormatted.locale = Locale(identifier: locale)
        subjectDateFormatted.dateFormat = format
        
        return subjectDateFormatted.string(from: self)
    }
}
let defaultDateFormat = "eeee dd 'de' MMMM 'de' yyyy"
let defaultDateFormatYear = "YYYY"
let defaultDateLocale = "es_ES"
