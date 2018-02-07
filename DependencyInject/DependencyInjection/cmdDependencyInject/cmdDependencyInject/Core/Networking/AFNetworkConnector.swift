//
//  AFNetworkConnector.swift
//  cmdDependencyInject
//
//  Created by Tom Marler on 1/25/18.
//  Copyright © 2018 Tom Marler. All rights reserved.
//

import Foundation

class AFNetworkConnector: NetworkingProvider {
    
    func restCall(urlString: String, onCompleted: ((Data?) -> ())?) {
        
        guard
            let url = try? urlString.asURL()
            else {
                onCompleted?(nil)
                return
        }
        
        SessionManager.default.request(url).responseData {
            response in
            onCompleted?(response.result.value)
        }
    }
}
