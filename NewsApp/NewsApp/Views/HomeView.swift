//
//  HomeView.swift
//  NewsApp
//
//  Created by Khusrav Safiev on 9/2/24.
//

import SwiftUI

struct HomeView: View {
    @StateObject var vm = ViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                
                Text("Apple News")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                    .padding(.top)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach (vm.AppleNews, id: \.url) { article in
                            TopArticleView(article: article)
                        }
                    }
                    .padding(.horizontal)
                }
                
                Text("Tesla News")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                    .padding(.top)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach (vm.TeslaNews, id: \.url) { article in
                            BottomNewsView(article: article)
                        }
                    }
                    .padding(.horizontal)
                }
            }
            .background(.secondary.opacity(0.2))
        }
    }
}

#Preview {
    HomeView()
}




