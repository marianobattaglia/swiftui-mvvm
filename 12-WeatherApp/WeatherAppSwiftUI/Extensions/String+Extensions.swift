//
//  String+Extensions.swift
//  WeatherAppSwiftUI
//
//  Created by Mariano Martín Battaglia on 02/09/23.
//

import Foundation

extension String {
    
    func escaped() -> String {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self 
    }
    
}
