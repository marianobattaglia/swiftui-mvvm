//
//  CreateAccountResponse.swift
//  BankApp
//
//  Created by Mariano Martin Battaglia on 22/09/2023.
//

import Foundation

struct CreateAccountResponse: Decodable {
    let success: Bool
    let error: String?
}
