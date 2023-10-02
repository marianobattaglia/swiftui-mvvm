//
//  UserDefaults+Extensions.swift
//  WeatherAppSwiftUI
//
//  Created by Mariano Martín Battaglia on 02/09/23.
//

import Foundation

extension UserDefaults {
    
    var unit: TemperatureUnit {
        guard let value = self.value(forKey: "unit") as? String else {
            return .kelvin
        }
        return TemperatureUnit(rawValue: value) ?? .kelvin
    }
    
}
