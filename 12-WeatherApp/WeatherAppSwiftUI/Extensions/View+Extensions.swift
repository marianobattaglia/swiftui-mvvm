//
//  View+Extensions.swift
//  WeatherAppSwiftUI
//
//  Created by Mariano Martín Battaglia on 02/09/23.
//

import Foundation
import SwiftUI

extension View {
    
    func embedInNavigationView() -> some View {
        return NavigationView { self }
    }
    
}
