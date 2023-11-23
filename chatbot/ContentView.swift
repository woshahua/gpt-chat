//
//  ContentView.swift
//  chatbot
//
//  Created by Han Ko on 2023/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("chat")
                .tabItem {
                    Image(systemName: "bubble")
                }
            Text("setting")
                .tabItem {
                    Image(systemName: "gear")
                }
        }
    }
}

#Preview {
    ContentView()
}
