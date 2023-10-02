//
//  TransferFundResponse.swift
//  BankApp
//
//  Created by Mariano Martin Battaglia on 29/09/2023.
//

import Foundation

struct TransferFundResponse: Decodable {
    let success: Bool
    let error: String?
}
