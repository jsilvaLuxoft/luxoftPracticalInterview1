//
//  DateExtensions.swift
//  TechinicalInterviewTwo
//
//  Created by Silva, Jonathan on 25/02/21.
//

import Foundation

struct DateUtils {
    
    private static var dateFormatter: DateFormatter!
    
    private init() {}
    
    static var formatter: DateFormatter {
        if dateFormatter == nil {
            dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-ddTHH:mm:ss.SSSZ"
        }
        return dateFormatter
    }
    
}

extension String {
    
    var toDate: Date? {
        return DateUtils.formatter.date(from: self)
    }
    
}

extension Date {
    
    var toString: String {
        return DateUtils.formatter.string(from: self)
    }
    
}
