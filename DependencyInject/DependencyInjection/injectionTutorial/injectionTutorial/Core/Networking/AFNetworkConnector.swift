/*
 
 NetworkConnector: 
 
 
 */

import Foundation

protocol Cancelable: AnyObject {
    func cancel()
}

class AFNetworkConnector: NetworkingProvider {
//    func restCall(urlString: String, completed: ([NSArray]?) -> ()) {
//        <#code#>
//    }
    

    
    
    //@discardableResult
    func restCall(urlString: String, completed: ([NSArray]?) -> ()) {
        print(completed)

        completed(nil)
        return
    }
}

extension URLSessionTask: Cancelable {}
