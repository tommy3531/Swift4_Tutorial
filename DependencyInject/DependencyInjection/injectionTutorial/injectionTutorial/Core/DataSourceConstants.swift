//
//  Constants.swift
//  injectionTutorial
//
//  Created by Tom Marler on 1/25/18.
//  Copyright © 2018 Tom Marler. All rights reserved.
//

import Foundation

struct DataSourceConstants {
    
    static let TMDBBaseURL = "https://api.themoviedb.org"
    static let MoviesURL = "/3/movie/popular"
    static let APIParameterKey = "4ca47133abecb1d072940a3b813cacee"
    static let APIParameterValue = "_YOUR_API_KEY_HERE_"
    static let PageParameterKey = "page"
    
    static func URLString(forPage page: String = "1") -> String? {
        
        let urlComponents = NSURLComponents(string: DataSourceConstants.TMDBBaseURL)
        urlComponents?.path = DataSourceConstants.MoviesURL
        
        let apiKey = URLQueryItem(name: DataSourceConstants.APIParameterKey, value: DataSourceConstants.APIParameterValue)
        let page = URLQueryItem(name: DataSourceConstants.PageParameterKey, value: page)
        
        urlComponents?.queryItems = [apiKey, page]
        
        return urlComponents?.string
    }
    
}
