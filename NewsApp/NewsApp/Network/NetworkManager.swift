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
final class NetworkManager {
    
    // MARK: - Properties
    static let shared = NetworkManager()
    private let decoder = JSONDecoder()
   
    // MARK: - Initializer
    private init() {
        decoder.dateDecodingStrategy = .iso8601
    }
    
    // MARK: - Methods
    func getNews(urlNews: String) async throws -> News {
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


