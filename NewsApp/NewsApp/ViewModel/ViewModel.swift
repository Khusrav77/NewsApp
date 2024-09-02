//
//  ViewModel.swift
//  NewsApp
//
//  Created by Khusrav Safiev on 9/2/24.
//

import Foundation


final class ViewModel: ObservableObject {
    // MARK: - Properties
    @Published var news: [Article] = []
    
    // MARK: - Initializet
    init() {
        fetchNews()
    }
    
    // MARK: - Mtheds
    func fetchNews() {
        Task {
            
            do {
                let articles = try await NetworkManager.shared.getNews()
                news = articles.articles
            } catch  {
                if let error = error as? NetworkError {
                    print(error)
                }
            }
        }
    }
}
