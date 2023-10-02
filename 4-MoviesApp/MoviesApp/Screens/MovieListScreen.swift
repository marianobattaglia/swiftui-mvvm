//
//  MovieListScreen.swift
//  MoviesApp
//
//  Created by Mariano Martin Battaglia on 20/09/2023.
//

import SwiftUI

struct MovieListScreen: View {
    
    @ObservedObject private var movieListVM: MovieListViewModel
    @State private var movieName: String = ""
    
    init() {
        self.movieListVM = MovieListViewModel()
    }
    
    var body: some View {
        VStack {
            
            TextField("Search", text: $movieName, onEditingChanged: { _ in }, onCommit: {
                // perform the search
                self.movieListVM.searchByName(self.movieName)
            }).padding(.horizontal).textFieldStyle(.roundedBorder)
            
            Spacer()
            
            .navigationBarTitle("Movies")
            
            if self.movieListVM.loadingState == .success {
                MovieListView(movies: self.movieListVM.movies)
            } else if self.movieListVM.loadingState == .failed {
                FailedView()
            } else if self.movieListVM.loadingState == .loading {
                LoadingView()
            }
            
        }.embedNavigationView()
        
    }
}

struct MovieListScreen_Previews: PreviewProvider {
    static var previews: some View {
        MovieListScreen()
    }
}
