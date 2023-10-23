//
//  ContentView.swift
//  animations
//
//  Created by aydin salman on 16/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var dragAmount = CGSize.zero
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 200, height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .offset(dragAmount)
            .gesture(DragGesture()
                .onChanged { dragAmount = $0.translation }
                // explicit animation animates just on ended (starting point)
                .onEnded { _ in withAnimation(.spring) { dragAmount = CGSize.zero }}
            )
            // implicit animation animates both onchanged (dragging) & onended (start)
            // .animation(.spring, value: dragAmount)
    }
}

#Preview {
    ContentView()
}
