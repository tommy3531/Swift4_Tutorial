//
//  MovieFactoryProvider.swift
//  injectionTutorial
//
//  Created by Tom Marler on 1/25/18.
//  Copyright © 2018 Tom Marler. All rights reserved.
//

import Foundation

protocol MoviesFactoryProvider {
    func movieItems(withJSON json: Any) -> [MovieItem]
}
