//
//  MovieItem.swift
//  injectionTutorial
//
//  Created by Tom Marler on 1/25/18.
//  Copyright © 2018 Tom Marler. All rights reserved.
//

import Foundation

protocol MovieItem {
    var id: Int { get }
    var title: String { get }
    var movieDescription: String { get }
    var averageVote: Double { get }
}
