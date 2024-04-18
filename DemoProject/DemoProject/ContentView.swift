//
//  ContentView.swift
//  DemoProject
//
//  Created by 황규상 on 4/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .center) {
            GeometryReader { geometry in
                Text("Hello World, how are you?")
                    .font(.largeTitle)
                    .border(Color.black)
                    .frame(
                        minWidth: 0,
                        maxWidth: geometry.size.width / 2,
                        minHeight: 0,
                        maxHeight: .infinity,
                        alignment: .center
                    )
            }
        }
    }
}

#Preview {
    ContentView()
}
