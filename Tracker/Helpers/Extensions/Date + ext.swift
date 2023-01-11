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
    
    func agoForward(to days: Int) -> Date {
        return calendar.date(byAdding: .day, value: days, to: self) ?? self
    }
    
    func stripTime() -> Date {
        let components = calendar.dateComponents([.year,
                                                  .month, .day], from: self)
        return calendar.date(from: components) ?? self
    }
}

