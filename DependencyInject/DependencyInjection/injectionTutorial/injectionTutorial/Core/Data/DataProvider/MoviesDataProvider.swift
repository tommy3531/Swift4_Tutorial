//
//  MoviesDataProvider.swift
//  injectionTutorial
//
//  Created by Tom Marler on 1/25/18.
//  Copyright © 2018 Tom Marler. All rights reserved.
//

import Foundation

protocol MoviesDataProvider {
    var networkingProvider: NetworkingProvider { get set }
    var moviesFactory: MoviesFactoryProvider { get set }
    func getMovies(onCompleted: (([MovieItem]) -> ())?)
}
