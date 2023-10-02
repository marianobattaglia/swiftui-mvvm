//
//  Movies.swift
//  MoviesApp
//
//  Created by Mariano Martin Battaglia on 19/09/2023.
//

import Foundation

struct MoviesResponse: Codable {
    let movies: [Movie]
    
    private enum CodingKeys: String, CodingKey {
        case movies = "Search"
    }
}

struct Movie: Codable {
    let title: String
    let year: String
    let imdbId: String
    let poster: String
    
    private enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case imdbId = "imdbID"
        case poster = "Poster"
    }
}
