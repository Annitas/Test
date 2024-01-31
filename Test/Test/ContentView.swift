//
//  ContentView.swift
//  Test
//
//  Created by Anita Stashevskaya on 31.01.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ProductCardView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Главная")
                }
            Text("Second")
                .tabItem {
                    Image(systemName: "square.grid.3x3.fill")
                    Text("Каталог")
                }
            Text("Third")
                .tabItem {
                    Image(systemName: "cart")
                    Text("Корзина")
                }
            Text("Fourth")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Профиль")
            }
        }
    }
}

#Preview {
    ContentView()
}
