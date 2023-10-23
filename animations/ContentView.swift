//
//  ContentView.swift
//  animations
//
//  Created by aydin salman on 16/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showRect = false
    var body: some View {
        VStack {
            Button("tap me!") {
                withAnimation {showRect.toggle()}
            }
            if (showRect) {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    //.transition(.scale)
                    //.transition(.asymmetric(insertion: .scale, removal: .opacity))
                    .transition(.pivot)
            }
        }
    }
}

struct CornerRotateModifier: ViewModifier {
    let amount: Double
    let anchor: UnitPoint
    
    func body(content: Content) -> some View {
        content
            .rotationEffect(.degrees(amount), anchor: anchor)
            .clipped()
    }
}

extension AnyTransition {
    static var pivot : AnyTransition {
        .modifier(active: CornerRotateModifier(amount: -90, anchor: .topLeading), identity: CornerRotateModifier(amount: 0, anchor: .topLeading))
    }
}

#Preview {
    ContentView()
}
