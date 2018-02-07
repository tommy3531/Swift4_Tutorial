//
//  ListDisplayable.swift
//  injectionTutorial
//
//  Created by Tom Marler on 1/25/18.
//  Copyright © 2018 Tom Marler. All rights reserved.
//

import Foundation

protocol ListDisplayable {
    var listItemTitle: String { get }
    var listItemSubtitle: String? { get }
}
