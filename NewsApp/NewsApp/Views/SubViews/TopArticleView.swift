//
//  TopArticleView.swift
//  NewsApp
//
//  Created by Khusrav Safiev on 9/15/24.
//

import SwiftUI

struct TopArticleView: View {
  
    // MARK: - Properties
    let article: Article
   
    // MARK: - Body
    var body: some View {
        VStack {
            if let url = article.urlToImage,
               let imageUrl = URL(string: url) {
                AsyncImage(url: imageUrl) { phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(height: 150)
                            .clipShape(.rect(cornerRadius: 10))
                    } else {
                        ZStack {
                            Rectangle()
                                .frame(height: 150)
                                .foregroundStyle(.secondary.opacity(0.3))
                                .clipShape(.rect(cornerRadius: 10))
                            
                            Image(systemName: "photo")
                                .resizable()
                                .scaledToFit()
                                .foregroundStyle(.secondary)
                                .frame(height: 50)
                        }
                    }
                }
            }
            
            VStack(alignment: .leading) {
                
                Text(article.title)
                    .titleFont()
                
                Spacer()
                
                Text(article.publishedAt.convertDate())
                    .descriptionFont()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .frame(width: 260, height: 260)
        .padding(10)
        .background(.background)
        .clipShape(.rect(cornerRadius: 15))
    }
}
