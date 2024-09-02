//
//  Model.swift
//  NewsApp
//
//  Created by Khusrav Safiev on 9/2/24.
//

import Foundation

struct News: Decodable {
    let status: String
    let totalResults: Int
    let articles: [Article]
}


struct Article: Decodable {
    let title: String
    let description: String
    let url: String
    let urlToImage: String
    let publishedAt: Date
    
}


