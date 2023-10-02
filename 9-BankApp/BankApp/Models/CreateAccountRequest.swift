//
//  CreateAccountRequest.swift
//  BankApp
//
//  Created by Mariano Martin Battaglia on 22/09/2023.
//

import Foundation

struct CreateAccountRequest: Codable {
    
    let name: String
    let accountType: String
    let balance: Double
    
}
