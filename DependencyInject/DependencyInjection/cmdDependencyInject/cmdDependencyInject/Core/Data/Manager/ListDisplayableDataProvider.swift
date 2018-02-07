//
//  ListDisplayableDataProvider.swift
//  cmdDependencyInject
//
//  Created by Tom Marler on 1/25/18.
//  Copyright © 2018 Tom Marler. All rights reserved.
//

import Foundation

protocol ListDisplayableDataProvider {
    func getListItems(onCompleted: (([ListDisplayable]) -> ())?)
    func searchListItems(searchTerm: String, onCompleted: (([ListDisplayable]) -> ())?)
}
