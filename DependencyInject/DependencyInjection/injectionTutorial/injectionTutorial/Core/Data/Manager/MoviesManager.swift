//
//  MoviesManager.swift
//  injectionTutorial
//
//  Created by Tom Marler on 1/25/18.
//  Copyright © 2018 Tom Marler. All rights reserved.
//

import Foundation

class MoviesManager: ListDisplayableDataProvider {
    
    private var cachedItems: [ListDisplayable]?
    
    var moviesDataProvider: MoviesDataProvider
    
    init(withDataProvider dataProvider: MoviesDataProvider = MoviesDataSource()) {
        self.moviesDataProvider = dataProvider
    }
    
   
    // Lets get the List of Items
    func getListItems(onCompleted: (([ListDisplayable]) -> ())?) {
        self.moviesDataProvider.getMovies { (movies) in
            let listItems = movies.map({ ListDisplayableItem(withMovieItem: $0) })
            
            
            DispatchQueue.main.async(execute: {
                onCompleted?(listItems)
            })
            
            self.cachedItems = listItems
            
        }
    }
    
    func searchListItems(searchTerm: String, onCompleted: (([ListDisplayable]) -> ())?) {
        if let cached = cachedItems {

            onCompleted?(self.filter(cached, term: searchTerm))
        } else {
            getListItems(onCompleted: { (items) in
                onCompleted?(self.filter(items, term: searchTerm))
            })
        }
    }
    
    private func filter(_ list: [ListDisplayable], term: String) -> [ListDisplayable] {
        return list.filter(){ $0.listItemTitle.lowercased().contains(term.lowercased()) }
    }
}

// MARK: ListDisplayable
private struct ListDisplayableItem: ListDisplayable {
    var listItemTitle: String
    var listItemSubtitle: String?
    
    init(withMovieItem item: MovieItem) {
        self.listItemTitle = item.title
        self.listItemSubtitle = item.movieDescription
    }
}
