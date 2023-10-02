//
//  WeatherViewModel.swift
//  WeatherAppSwiftUI
//
//  Created by Mariano Martin Battaglia on 02/10/2023.
//

import Foundation

struct WeatherViewModel {
    
    let weather: Weather
    
    let id = UUID()
    
    func getTemperatureByUnit(unit: TemperatureUnit) -> Double {
        switch unit {
            case .celsius:
                return weather.temperature - 273.15
            case .fahrenheit:
                return 1.8 * (weather.temperature - 273) + 32
            case .kelvin:
                return weather.temperature
        }
    }
    
    var temperature: Double {
        return weather.temperature
    }
    
    var city: String {
        return weather.city
    }
    
    var icon: String {
        return weather.icon
    }
    
    var sunrise: Date {
        return weather.sunrise
    }
    
    var sunset: Date {
        weather.sunset
    }
    
}
