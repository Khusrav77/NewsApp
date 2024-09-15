//
//  DetailView.swift
//  NewsApp
//
//  Created by Khusrav Safiev on 9/15/24.
//

import SwiftUI

struct DetailView: View {
    
    // MARK: - Properties
    let article: Article
    
    // MARK: - Body
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            MainImageView(article: article)
            
            VStack(alignment: .leading, spacing: 20) {
                Text(article.title)
                    .titleFont()
                
                if let description = article.description {
                    Text(description)
                        .descriptionFont()
                }
                
                
                Text(article.publishedAt.convertDate())
                    .descriptionFont()
            }
            .padding(.horizontal)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.background)
            .background(GradientAvatarView())
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    DetailView(
            article: Article(
            title: "title",
            description: "hghghghghgh",
            url: "",
            urlToImage: "https://picsum.photos/200",
            publishedAt: Date()
        )
    )
}


