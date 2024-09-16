//
//  BackButtonView.swift
//  NewsApp
//
//  Created by Khusrav Safiev on 9/16/24.
//

import SwiftUI

struct BackButtonView: View {
    
    // MARK: - Properties
    @Environment(\.dismiss) var dismiss
    
    // MARK: - Body
    var body: some View {
        Button {
            dismiss()
        } label: {
            ZStack {
                Circle()
                    .frame(width: 34)
                    .foregroundStyle(.black.opacity(0.3))
                
                Image(systemName: "chevron.left")
                    .foregroundStyle(.white)
                    .font(.title3)
                    .fontWeight(.medium)
            }
        }
    }
}

#Preview {
    BackButtonView()
}
