//
//  ContentView.swift
//  DemoProject
//
//  Created by 황규상 on 4/17/24.
//

import SwiftUI

struct StandardTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .background(Color.yellow)
            .border(Color.red, width: 0.2)
            .shadow(color: Color.green, radius: 5, x: 0, y: 0)
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Text 1")
                .modifier(StandardTitle())
            Spacer()
            Text("Text 2")
                .modifier(StandardTitle())
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
