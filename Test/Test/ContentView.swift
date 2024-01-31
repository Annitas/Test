//
//  ContentView.swift
//  Test
//
//  Created by Anita Stashevskaya on 31.01.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            LazyVStack(alignment: .leading, spacing: 20.0) {
                Image("productCard")
                Text("Добавка \"Липа\" к чаю 200 г")
                    .font(.system(size: 26, weight: .bold, design: .rounded))
                HStack {
                    Image("spanishFlag")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    Text("Испания, Риоха")
                }
                
                Text("Описание")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                Text("Флавоноиды липового цвета обладают противовоспалительным действием, способствуют укреплению стенки сосудов")
                Text("Основные характеристики")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                Text("Все характеристики")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .foregroundColor(.green)
                
                Text("Отзывы")
                    .font(.system(size: 23, weight: .bold, design: .rounded))
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(0..<10) {_ in 
                            ProductRowView()
                        }
                    }
                }
            }
            .padding()
        }
    }
}
struct ProductRowView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Александр В")
                .font(.system(size: 20, weight: .bold, design: .rounded))
            Text("7 мая 2021")
                .font(.system(size: 17, weight: .ultraLight, design: .rounded))
            HStack {
                Image(systemName: "star.fill")
                Image(systemName: "star.fill")
                Image(systemName: "star.fill")
                Image(systemName: "star.fill")
                Image(systemName: "star.leadinghalf.fill")
            }
            .foregroundColor(.orange)
            .font(.caption)
            Text("Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!")
                .font(.system(size: 18, weight: .light))
                .padding(5)
        }
        .padding()
        .background(Color.white)
        .frame(width: 290, height: 170)
        .cornerRadius(15)
        .shadow(radius: 2)
    }
}

#Preview {
    ContentView()
}
