//
//  NSURLNetworkConnector.swift
//  cmdDependencyInject
//
//  Created by Tom Marler on 1/25/18.
//  Copyright © 2018 Tom Marler. All rights reserved.
//

import Foundation

class NSURLNetworkConnector: NetworkingProvider {
    
    func restCall(urlString: String, onCompleted: ((Data?) -> ())?) {
        
        guard
            let url = try? urlString.asURL()
            else {
                onCompleted?(nil)
                return
        }
        
        let urlTask = URLSession.shared.dataTask(with: url) {
            (data, response, error) in
            onCompleted?(data)
        }
        
        urlTask.resume()
    }
}
