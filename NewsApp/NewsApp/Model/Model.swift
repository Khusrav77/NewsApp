//
//  Model.swift
//  NewsApp
//
//  Created by Khusrav Safiev on 9/2/24.
//

import Foundation


struct News: Decodable {
    var status: String
    var totalResults: Int
    var articles: [Article]
}



struct Article: Decodable {
    var title: String
    var description: String?
    var url: String
    var urlToImage: String?
    var publishedAt: Date
}


