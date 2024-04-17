//
//  ContentView.swift
//  DemoProject
//
//  Created by 황규상 on 4/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Sample Text")
                .font(.custom("Copperplate", size: 58))
                .padding(20)
                .border(Color.black)
        }
    }
}

#Preview {
    ContentView()
}
