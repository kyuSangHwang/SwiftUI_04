//
//  AppStroageView.swift
//  StorageDemo
//
//  Created by 황규상 on 4/22/24.
//

import SwiftUI

struct AppStroageView: View {
    @AppStorage("mytext") private var editorText: String = "Sample Text"
    
    var body: some View {
        TextEditor(text: $editorText)
            .padding(38)
            .font(.largeTitle)
    }
}

#Preview {
    AppStroageView()
}
