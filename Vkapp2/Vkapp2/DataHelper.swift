//
//  DataHelper.swift
//  Vkapp2
//
//  Created by 123 on 02.09.2023.
//
import Foundation

final class DateHelper{
    static func getDate(date: Date?) -> String {
        guard let date else {
            return ""
        }
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMM YYY hh:mm"
        dateFormatter.locale = Locale(identifier: "ru_RU")
        
        return dateFormatter.string(from: date)
    }
}
