//
//  Counter.swift
//  HelloMVVM
//
//  Created by Mohammad Azam on 7/22/20.
//  Copyright © 2020 Mohammad Azam. All rights reserved.
//

import Foundation

struct Counter {
    
    var value: Int = 0
    var isPremium: Bool = false
    
    mutating func increment() {
        value += 1
        
        // business logic 
        if value.isMultiple(of: 3) {
            // premium
            isPremium = true
        } else {
            // not premium
            isPremium = false
        }
        
    }
}
