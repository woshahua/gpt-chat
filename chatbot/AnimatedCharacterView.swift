//
//  AnimatedCharacterView.swift
//  chatbot
//
//  Created by Han Ko on 2023/11/24.
//

import Foundation
import SwiftUI

struct AnimatedCharacterView: View {
    let character: String
    let delay: Double

    @State private var animate = false

    var body: some View {
        Group {
            if character == "✈️" {
                Image(systemName: "paperplane.fill")
                    .font(.title)
                    .foregroundColor(.white)
            } else {
                Text(character)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
            }
        }
        .opacity(animate ? 1 : 0)
        .animation(Animation.easeOut(duration: 0.15).delay(delay), value: animate)
        .onAppear {
            animate = true
        }
    }
}

#Preview {
    AnimatedCharacterView(character: "teste", delay: 1.0)
}
