//
//  GradientAvatarView.swift
//  NewsApp
//
//  Created by Khusrav Safiev on 9/15/24.
//

import SwiftUI

struct GradientAvatarView: View {
    var body: some View {
        GeometryReader { _ in
            LinearGradient(
                colors: [Color(UIColor.systemBackground), .clear],
                startPoint: .bottom,
                endPoint: .top
            )
            .frame(height: SizeConstans.avatarHeight / 4)
            .offset(y: -SizeConstans.avatarHeight / 4)
        }
    }
}
