//
//  NetworkingProvider.swift
//  cmdDependencyInject
//
//  Created by Tom Marler on 1/25/18.
//  Copyright © 2018 Tom Marler. All rights reserved.
//

import Foundation

protocol NetworkingProvider {
    func restCall(urlString: String, onCompleted: ((Data?) -> ())?)
}
