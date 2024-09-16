//
//  ViewModel.swift
//  NewsApp
//
//  Created by Khusrav Safiev on 9/2/24.
//

import Foundation

@MainActor
final class ViewModel: ObservableObject {
    
    // MARK: - Properties
    @Published var AppleNews: [Article] = []
    @Published var TeslaNews: [Article] = []
    
    // MARK: - Initializet
    init() {
        fetchAppleNews()
        fetchTeslaNews()
    }
    
    // MARK: - Mtheds
    func fetchAppleNews() {
        Task {
            do {
                let articles = try await NetworkManager.shared.getNews(urlNews: URLConstants.AppleNews)
                AppleNews = articles.articles
            } catch  {
                if let error = error as? NetworkError {
                    print(error)
                }
            }
        }
    }
    
    func fetchTeslaNews() {
        Task {
            do {
                let articles = try await NetworkManager.shared.getNews(urlNews: URLConstants.TeslaNews)
                TeslaNews = articles.articles
            } catch  {
                if let error = error as? NetworkError {
                    print(error)
                }
            }
        }
    }
}
