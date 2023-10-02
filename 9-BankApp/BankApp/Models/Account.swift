//
//  Account.swift
//  BankApp
//
//  Created by Mariano Martin Battaglia on 22/09/2023.
//

import Foundation

enum AccountType: String, Codable, CaseIterable {
    case checking
    case saving
}

extension AccountType {
    var title: String {
        switch self {
            case .checking:
                return "Checking"
            case .saving:
                return "Saving"
        }
    }
}

// DTO: Data Transfer Object
struct Account: Codable {
    var id: UUID
    var name: String
    let accountType: AccountType
    var balance: Double
}
