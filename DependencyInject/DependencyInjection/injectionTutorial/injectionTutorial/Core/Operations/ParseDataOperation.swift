//
//  ParseDataOperation.swift
//  injectionTutorial
//
//  Created by Tom Marler on 1/25/18.
//  Copyright © 2018 Tom Marler. All rights reserved.
//

import Foundation

class ParseDataOperation: DAOperation {
    
    private let factory: MoviesFactoryProvider
    
    var moviesData: Data?
    var movies: [MovieItem]?
    
    init(withFactory factory: MoviesFactoryProvider = JSONMoviesFactory()) {
        self.factory = factory
    }
    
    override func main() {
        guard isCancelled == false else {
            finish(true)
            return
        }
        
        executing(true)
        guard
            let data = moviesData,
            let jsonObject = try? JSONSerialization.jsonObject(with: data, options: [JSONSerialization.ReadingOptions.allowFragments])
            else {
                executing(false)
                finish(true)
                return
        }
        
        movies = factory.movieItems(withJSON: jsonObject)
        
        executing(false)
        finish(true)
    }
}
