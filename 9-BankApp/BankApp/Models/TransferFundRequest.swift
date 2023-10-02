//
//  TransferFundRequest.swift
//  BankApp
//
//  Created by Mariano Martin Battaglia on 29/09/2023.
//

import Foundation

struct TransferFundRequest: Codable {
    let accountFromId: String
    let accountToId: String
    let amount: Double
}
