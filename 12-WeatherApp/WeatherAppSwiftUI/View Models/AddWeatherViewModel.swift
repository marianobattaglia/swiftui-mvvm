//
//  AddWeatherViewModel.swift
//  WeatherAppSwiftUI
//
//  Created by Mariano Martin Battaglia on 02/10/2023.
//

import Foundation

class AddWeatherViewModel: ObservableObject {
    
    var city: String = ""
    
    func save(completion: @escaping (WeatherViewModel) -> Void) {
        Webservice().getWeatherByCity(city: city) { result in
            switch result {
                case .success(let weather):
                    DispatchQueue.main.async {
                        completion(WeatherViewModel(weather: weather))
                    }
                case .failure(let error):
                    print(error)
            }
        }
    }
}
