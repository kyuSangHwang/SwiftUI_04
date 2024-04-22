//
//  ContentView.swift
//  StorageDemo
//
//  Created by 황규상 on 4/22/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            SceneStorageView()
                .tabItem {
                    Image(systemName: "circle.fill")
                    Text("SceneStorage")
                }
            AppStroageView()
                .tabItem {
                    Image(systemName: "square.fill")
                    Text("AppStroage")
                }
        }
    }
}

#Preview {
    ContentView()
}
