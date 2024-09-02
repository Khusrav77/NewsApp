//
//  ContentView.swift
//  NewsApp
//
//  Created by Khusrav Safiev on 9/2/24.
//

import SwiftUI

struct ContentView: View {
    @State var news: [Article] = []
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .onAppear{
            Task {
                
            }
        }
    }
}

#Preview {
    ContentView()
}
