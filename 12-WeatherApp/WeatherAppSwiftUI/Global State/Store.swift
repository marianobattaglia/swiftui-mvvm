//
//  Store.swift
//  WeatherAppSwiftUI
//
//  Created by Mariano Martin Battaglia on 02/10/2023.
//

import Foundation

class Store: ObservableObject {
    @Published var selectedUnit: TemperatureUnit = .kelvin
    @Published var weatherList: [WeatherViewModel] = [WeatherViewModel]()
    
    init () {
        selectedUnit = UserDefaults.standard.unit
    }
    
    func addWeather(_ weather: WeatherViewModel) {
        weatherList.append(weather)
    }
}
