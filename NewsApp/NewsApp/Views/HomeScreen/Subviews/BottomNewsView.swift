//
//  BottomNewsView.swift
//  NewsApp
//
//  Created by Khusrav Safiev on 9/15/24.
//

import SwiftUI

struct BottomNewsView: View {
    let article: Article
    
    var body: some View {
        VStack {
            if let url = article.urlToImage, let image = URL(string: url) {
                AsyncImage(url: image) { phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 120, height: 120)
                            .clipShape(.rect(cornerRadius: 10))
                    } else {
                        ZStack {
                            Rectangle()
                                .foregroundStyle(.secondary.opacity(0.3))
                                .frame(width: 120, height: 120)
                                .clipShape(.rect(cornerRadius: 10))
                            
                            Image(systemName: "photo")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 50)
                                .foregroundStyle(.secondary)
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
        .frame(width: 120, height: 240)
        .padding(10)
        .background(.background)
        .clipShape(.rect(cornerRadius: 10))
    }
}


