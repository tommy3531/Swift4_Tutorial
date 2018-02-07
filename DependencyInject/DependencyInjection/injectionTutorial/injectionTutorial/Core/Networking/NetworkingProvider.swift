/*
 
 Networking Provider: This protocol provides a method signature only to perform a restcall to the API
                      Takes a URL and returns some data from that URL
 
                TODO: Error Checking
 */

import Foundation

protocol NetworkingProvider {
    func restCall(urlString: String, completed: ([NSArray]?) -> ())
}

