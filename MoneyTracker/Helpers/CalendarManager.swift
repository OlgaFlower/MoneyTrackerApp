//
//  CalendarManager.swift
//  MoneyTracker
//
//  Created by Olha Bereziuk on 06.06.24.
//

import Foundation

final class CalendarManager {
    
    private init() {}
    
    static func getNumberOfDaysInMonth(for date: Date) -> Int {
        let calendar = Calendar.current

        let range = calendar.range(of: .day, in: .month, for: date)!
        let numDays = range.count

        return numDays
    }
}
