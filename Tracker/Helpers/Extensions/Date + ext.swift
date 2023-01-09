//
//  Date + ext.swift
//  Tracker
//
//  Created by Андрей Кодочигов on 30.12.2022.
//

import Foundation

extension Date {
    private var calendar: Calendar {
        return Calendar.current
    }
    
    var startOfWeek: Date {
        let component = calendar.dateComponents([.yearForWeekOfYear, .weekOfYear], from: self)
        guard let firsDay = calendar.date(from: component) else { return self }
        return calendar.date(byAdding: .day, value: 1, to: firsDay) ?? self
    }
}

