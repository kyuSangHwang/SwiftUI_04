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
            Button(action: {
                doSomething()
            }) {
                Text("Do something")
            }
        }
    }
    
    func doSomething() {
        print("Start \(Date())")
        let parentIndex: Int = 3
        let detachedTask = Task.detached {
//            let result = await takesTooLong()
//            print("\(result)")
            async let result = takesTooLong(index: parentIndex)
            print("\(await result)")
        }
        print(detachedTask)
        print("End \(Date())")
    }
    
    func takesTooLong(index: Int) async -> Date {
        sleep(5)
        print("Async task completed at \(index)")
        return Date()
    }
}

#Preview {
    ContentView()
}
