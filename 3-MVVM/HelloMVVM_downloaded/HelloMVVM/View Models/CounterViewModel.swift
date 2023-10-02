//
//  CounterViewModel.swift
//  HelloMVVM
//
//  Created by Mohammad Azam on 7/22/20.
//  Copyright © 2020 Mohammad Azam. All rights reserved.
//

import Foundation
import SwiftUI

class CounterViewModel: ObservableObject {
    
    @Published private var counter: Counter = Counter()
    
    var value: Int {
        counter.value
    }
    
    var premium: Bool {
        counter.isPremium
    }
    
    func increment() {
        counter.increment()
    }
}
