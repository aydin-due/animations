//
//  ContentView.swift
//  animations
//
//  Created by aydin salman on 16/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    @State private var enabled = false
    var body: some View {
        // attach animation modifier to a view
        
        /*
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
        */
        
        // add animation modifier to a binding
        
        /*
         Stepper("scale amount", value: $animationAmount.animation(
             .easeInOut(duration: 1)
                     .repeatCount(3, autoreverses: true)), in: 1...10)
         */
        
        // explicitly animating state changes
        
        /*
        Button("Tap Me") {
            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                animationAmount += 360
            }
       }
       .padding(50)
       .background(.red)
       .foregroundColor(.white)
       .clipShape(Circle())
       .rotation3DEffect(
        .degrees(animationAmount),
                              axis: /*@START_MENU_TOKEN@*/(x: 0.0, y: 1.0, z: 0.0)/*@END_MENU_TOKEN@*/
       )
         */
        
        Button("tap me!") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? .blue : .red)
        .animation(nil, value: enabled)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: enabled)
    }
}

#Preview {
    ContentView()
}
