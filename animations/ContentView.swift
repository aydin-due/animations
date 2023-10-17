//
//  ContentView.swift
//  animations
//
//  Created by aydin salman on 16/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    var body: some View {
        Button("Tap Me") {
            //animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        //.scaleEffect(animationAmount)
        //.blur(radius: (animationAmount - 1) * 3)
        //.animation(.easeOut, value: animationAmount)
        //.animation(.interpolatingSpring(stiffness: 50, damping: 1), value: animationAmount)
        .overlay(
            Circle()
                .stroke(.red)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation(
                    .easeInOut(duration: 1)
                    //.delay(1),
                    //.repeatCount(3, autoreverses: true),
                    .repeatForever(autoreverses: false),
                   value: animationAmount)
        )
        .onAppear {
            animationAmount = 2
        }
    }
}

#Preview {
    ContentView()
}
