//
//  MovieListViewModel.swift
//  MoviesApp
//
//  Created by Mariano Martin Battaglia on 20/09/2023.
//

import Foundation

class MovieListViewModel: ViewModelBase {
    @Published var movies = [MovieViewModel]()
    let httpCliet = HTTPClient()
    
    func searchByName(_ name: String) {
        
        if name.isEmpty {
            return
        }
        
        self.loadingState = .loading
        
        httpCliet.getMoviesBy(search: name.trimmedAndEscaped()) { result in
            switch result {
                case .success(let movies):
                    if let movies = movies {
                        DispatchQueue.main.async {
                            self.movies = movies.map(MovieViewModel.init)
                            self.loadingState = .success
                        }
                    }
                case .failure(let error):
                    print(error.localizedDescription)
                    DispatchQueue.main.async {
                        self.loadingState = .failed
                    }
            }
        }
    }
    
}

struct MovieViewModel {
    
    let movie: Movie
    
    var imdbId: String {
        movie.imdbId
    }
    
    var title: String {
        movie.title
    }
    
    var poster: String {
        movie.poster
    }
    
    var year: String {
        movie.year
    }
    
}
