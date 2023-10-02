//
//  Double+Extensions.swift
//  BankApp
//
//  Created by Mariano Martin Battaglia on 22/09/23.
//

import Foundation

extension Double {
    
    func formatAsCurrency() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        let formattedCurrency = formatter.string(from: self as NSNumber)
        return formattedCurrency ?? ""
    }
    
}
