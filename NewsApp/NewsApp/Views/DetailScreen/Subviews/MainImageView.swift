//
//  MainImageView.swift
//  NewsApp
//
//  Created by Khusrav Safiev on 9/15/24.
//

import SwiftUI

struct MainImageView: View {
    
    // MARK: - Properties
    let article: Article
    
    // MARK: - Body
    var body: some View {
        GeometryReader { geometry in
            if let url = article.urlToImage, let imageUrl = URL(string: url) {
                AsyncImage(url: imageUrl) { phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .offset(y: -geometry.frame(in: .global).minY)
                            .frame(width: SizeConstans.screenWidth, height: geometry.frame(in: .global).minY + SizeConstans.avatarHeight + 10)
                    }
                }
            }
        }
        .frame(height: SizeConstans.avatarHeight)
    }
}

