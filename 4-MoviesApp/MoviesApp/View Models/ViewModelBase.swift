//
//  ViewModelBase.swift
//  MoviesApp
//
//  Created by Mariano Martin Battaglia on 20/09/2023.
//

import Foundation

enum LoadingState {
    case loading, success, failed, none
}

class ViewModelBase: ObservableObject {
    @Published var loadingState: LoadingState = .none
}
