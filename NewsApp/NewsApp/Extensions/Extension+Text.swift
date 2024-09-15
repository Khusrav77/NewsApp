//
//  Extension+Text.swift
//  NewsApp
//
//  Created by Khusrav Safiev on 9/15/24.
//

import SwiftUI

extension Text {
    func titleFont() -> some View {
        self
         .foregroundStyle(.primary.opacity(0.8))
         .font(.system(size: 16, weight: .bold, design: .rounded))
    }
    
    func descriptionFont() -> some View {
        self
         .foregroundStyle(.primary.opacity(0.8))
         .font(.system(size: 14, weight: .regular, design: .rounded))
    }
}
