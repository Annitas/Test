//
//  ContentView.swift
//  Test
//
//  Created by Anita Stashevskaya on 31.01.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("productCard")
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Добавка \"Липа\" к чаю 200 г")
            Text("Испания, Риоха")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
