//
//  WeatherAppSwiftUIApp.swift
//  WeatherAppSwiftUI
//
//  Created by Mariano Martín Battaglia on 02/09/23.
//

import SwiftUI

@main
struct WeatherAppSwiftUIApp: App {
    
    var body: some Scene {
        WindowGroup {
            WeatherListScreen().environmentObject(Store())
        }
    }
}
