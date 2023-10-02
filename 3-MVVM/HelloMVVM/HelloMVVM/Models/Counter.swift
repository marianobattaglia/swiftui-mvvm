//
//  Counter.swift
//  HelloMVVM
//
//  Created by Mariano Martin Battaglia on 15/09/2023.
//

import Foundation

struct Counter {
    
    var value: Int = 0
    var isPremium: Bool = false
    
    mutating func increment() {
        value += 1
        
        // Busines Logic...
        if value.isMultiple(of: 3) {
            isPremium = true
        } else {
            isPremium = false
        }
    }
}
