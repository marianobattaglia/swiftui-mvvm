//
//  String+Extensions.swift
//  MoviesApp
//
//  Created by Mariano Martin Battaglia on 20/09/2023.
//

import Foundation

extension String {
    func trimmedAndEscaped() -> String {
        let trimmedString = self.trimmingCharacters(in: .whitespacesAndNewlines)
        return trimmedString.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
}
