//
//  View+Extensions.swift
//  MoviesApp
//
//  Created by Mariano Martin Battaglia on 20/09/2023.
//

import Foundation
import SwiftUI

extension View {
    func embedNavigationView() -> some View {
        return NavigationView { self }
    }
}
