//
//  Date+Extensions.swift
//  WeatherAppSwiftUI
//
//  Created by Mariano Martín Battaglia on 02/09/23.
//

import Foundation


extension Date {
    
    func formatAsString() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm a"
        return formatter.string(from: self)
    }
    
}
