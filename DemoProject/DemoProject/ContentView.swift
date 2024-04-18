//
//  ContentView.swift
//  DemoProject
//
//  Created by 황규상 on 4/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image(systemName: "airplane")
            Text("Flight times:")
            Text("London")
        }
        .font(.largeTitle)
        .frame(width: 300)
        .lineLimit(1...4)
        .transaction {
            $0.disablesAnimations = true // $0 : 익명 파라미터 $0, $1, $2.. 이런식으로
        }
    }
}

#Preview {
    ContentView()
}
