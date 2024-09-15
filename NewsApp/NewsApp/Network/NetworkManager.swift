//
//  NetworkManager.swift
//  NewsApp
//
//  Created by Khusrav Safiev on 9/2/24.
//

import Foundation

// MARK: - NetworkManagerProtocol
protocol NetworkManagerProtocol {
    func getNews() async throws -> News
}

// MARK: - NetworkManager
final class NetworkManager: NetworkManagerProtocol {
    
    // MARK: - Properties
    static let shared = NetworkManager()
    private let url = "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=5dd079f0bc5342bba152602a26d4387a"
    private let urlNews = "https://newsapi.org/v2/everything?q=apple&from=2024-09-01&to=2024-09-01&sortBy=popularity&apiKey=5dd079f0bc5342bba152602a26d4387a"
    private let decoder = JSONDecoder()
   
    // MARK: - Initializer
    private init() {
        decoder.dateDecodingStrategy = .iso8601
    }
    
    // MARK: - Methods
    func getNews() async throws -> News {
        guard let url = URL(string: urlNews) else { throw NetworkError.invalidURL }
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else { throw NetworkError.invalidResponse }
        do {
            return  try decoder.decode(News.self, from: data)
        } catch  {
            throw NetworkError.invalidData
        }
    }
}


