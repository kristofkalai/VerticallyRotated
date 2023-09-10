//
//  ContentView.swift
//  Example
//
//  Created by Kristóf Kálai on 2023. 09. 11..
//

import SwiftUI
import VerticallyRotated

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()

            HStack {
                Text("Calculated frame correctly:")
                Text("Hello, world!")
                    .verticallyRotated()
                    .border(Color.red)
            }

            Spacer()

            HStack {
                Text("Calculated frame incorrectly:")
                Text("Hello, world!")
                    .rotationEffect(.degrees(270))
                    .border(Color.red)
            }

            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
