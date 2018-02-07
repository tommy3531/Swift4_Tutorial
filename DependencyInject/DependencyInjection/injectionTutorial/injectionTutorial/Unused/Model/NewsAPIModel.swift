//
//  NewsAPIModel.swift
//  injectionTutorial
//
//  Created by Tom Marler on 1/25/18.
//  Copyright © 2018 Tom Marler. All rights reserved.
//

import Foundation

struct NewsAPIModel {
    
    var id: String?
    var name: String
    var author: String?
    var title: String
    var description: String
    var url: String
    var urlToImage: String?
    var publishedAt: String
    
    // Initialize the NewsAPIMode Struct
    init(id: String?, name: String, author: String, title: String, description: String, url: String, urlToImage: String?, publishedAt: String) {
        self.id = id
        self.name = name
        self.author = author
        self.title = title
        self.description = description
        self.url = url
        self.urlToImage = urlToImage
        self.publishedAt = publishedAt
    }
}
