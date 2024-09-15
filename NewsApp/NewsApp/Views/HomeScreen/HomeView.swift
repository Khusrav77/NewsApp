//
//  HomeView.swift
//  NewsApp
//
//  Created by Khusrav Safiev on 9/2/24.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: - Properties
    @StateObject var vm = ViewModel()
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                
                // MARK: - Apple News
                Text("Apple News")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                    .padding(.top)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        ForEach (vm.AppleNews, id: \.url) { article in
                            TopArticleView(article: article)
                        }
                    }
                    .padding(.horizontal)
                }
                .shadow(color: .black.opacity(0.1), radius: 8, x: 5, y: 8)
                
                // MARK: - Tesla News
                Text("Tesla News")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                    .padding(.top)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        ForEach (vm.TeslaNews, id: \.url) { article in
                            BottomNewsView(article: article)
                        }
                    }
                    .padding(.horizontal)
                }
                .shadow(color: .black.opacity(0.1), radius: 8, x: 5, y: 8)
            }
            .background(.secondary.opacity(0.3))
            .refreshable {
                vm.fetchAppleNews()
                vm.fetchTeslaNews()
            }
        }
    }
}

#Preview {
    HomeView()
}




