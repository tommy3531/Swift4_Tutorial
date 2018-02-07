//
//  NSURLNetworkConnector.swift
//  injectionTutorial
//
//  Created by Tom Marler on 1/25/18.
//  Copyright © 2018 Tom Marler. All rights reserved.
//

import Foundation

class NSURLNetworkConnector: NetworkingProvider {
    func restCall(urlString: String, completed: ([NSArray]?) -> ()) {
        completed(nil)
    }
}
