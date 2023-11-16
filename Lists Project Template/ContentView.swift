//
//  ContentView.swift
//  Lists Project Template
//
//  Created by [YOUR NAME GOES HERE].
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}



#Preview {
    ContentView()
}

struct Article {
    var title: String
    var author: String
    var rating: Int
    var excerpt: String
    var image: String
}
