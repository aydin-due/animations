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
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        }
    }
}

#Preview {
    ContentView()
}
