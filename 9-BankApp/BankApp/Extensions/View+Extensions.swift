//
//  View+Extensions.swift
//  BankApp
//
//  Created by Mariano Martin Battaglia on 22/09/23.
//

import Foundation
import SwiftUI

extension View {
    
    func embedInNavigationView() -> some View {
        NavigationView { self }
    }
    
    
}
