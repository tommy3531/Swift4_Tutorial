//
//  GetDataOperation.swift
//  injectionTutorial
//
//  Created by Tom Marler on 1/25/18.
//  Copyright © 2018 Tom Marler. All rights reserved.
//

import Foundation

class GetDataOperation: DAOperation {
    
    private let urlString: String
    private let provider: NetworkingProvider
    
    var responseData: [NSArray]?
    
    init(withURLString urlString: String, andNetworkingProvider provider: NetworkingProvider = AFNetworkConnector()) {
        self.urlString = urlString
        self.provider = provider
    }
    
    override func main() {
        guard isCancelled == false else {
            finish(true)
            return
        }
        
        executing(true)
        provider.restCall(urlString: urlString) { (array) in
            self.responseData = array
            self.executing(false)
            self.finish(true)
        }
    }
}
